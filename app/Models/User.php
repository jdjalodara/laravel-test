<?php

namespace App\Models;

use Webpatser\Uuid\Uuid;
use Laravel\Passport\HasApiTokens;
use Illuminate\Support\Facades\Storage;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'tbl_users';

    protected $fillable = [
        'username',
        'email',
        'password',
        'profile_image',
        'role',
        'registered_at',
        'verification_code',
        'is_verified'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        //'email_verified_at' => 'datetime',
    ];

    /**
     * @var string
     */
    
    public static  $profileImagePath = 'public/user/profile_image/';

    /**
     *  Setup model event hooks
     */
  

    /**
     * Get the route key for the model.
     *
     * @return string
     */
  

    /**
     * @return string
     */
    public function getProfileImageAttribute($value)
    {
        return $value ? asset(Storage::url($value)) : '';
    }

    /**
     * Get the posts.
     */
   

}
