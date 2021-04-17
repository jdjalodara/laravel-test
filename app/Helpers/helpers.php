<?php

use Illuminate\Support\Str;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use PhpParser\Node\Expr\Cast\String_;
use Illuminate\Support\Facades\Storage;

if (!function_exists('carbon')) {
    /**
     * @param string $date
     * @return \Carbon\Carbon
     */
    function carbon(string $date)
    {
        return \Carbon\Carbon::parse($date);
    }
}

if (!function_exists('deleteFile')) {
    /**
     * @param string $url
     * @return boolean true
     */
    function deleteFile(string $url)
    {
        $file = parse_url($url);
        File::delete(base_path('../'.$file['path']));
        return true;
    }
}

if (!function_exists('storeBase64File')) {
    /**
     * store base64 file
     *
     * @param string $base64_file
     * @param string $path
     * @return string $filename
     */
    function storeBase64File(string $base64, string $path)
    {
        $extension = explode('/', explode(':', substr($base64, 0, strpos($base64, ';')))[1])[1];
        $filename = $path . Str::random(10) . '.' . $extension;
        Storage::put($filename, file_get_contents($base64));

        return $filename;
    }
}

if (!function_exists('storeFile')) {
    /**
     * store file
     *
     * @param UploadedFile $file,
     * @param string $path
     * @return string $filename
     */
    function storeFile(UploadedFile $file, string $path)
    {
        $filename = $path . Str::random(10) . '.' . $file->getClientOriginalExtension();
        Storage::put($filename, file_get_contents($file));

        return $filename;
    }
}
