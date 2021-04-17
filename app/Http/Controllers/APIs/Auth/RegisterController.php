<?php

namespace App\Http\Controllers\APIs\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
   
    public function register(Request $request)
    {
        /* data validator */
        $validator = Validator::make($request->all(), [
            'email' => 'email|required|unique:tbl_users',
        ]);

        $errors =  $validator->errors();
  
        /* validator fails errors */
        if ($validator->fails()) {

            foreach ($errors->get('email') as $message) {
                return response()->json([
                    'status'    => false,
                    'error'   => 'Parameter invalid', 
                    'message'    => $message,
                ], 200);
            }

         
        }

        $user = new User;
        $user->verification_code = rand(111111,999999);
        $user->email = $request->email;
        $user->password = bcrypt('123456');
        $user->save();

     

        $mail_content = "Your verification code is ". $user->verification_code;

        Mail::raw($mail_content, function ($message) use($user) {
            $message->from('noreply@ebizzdevelopment.com', 'jalodarajayeshd@gmail.com');
            $message->to($user->email);
            $message->subject("Verification Code");
        });

        if (Mail::failures()) {
            return response()->json([
                'status'  => false,
                'message' => 'mail sending failed',
                'errors'  =>array(),
            ]);
        }

        return response()->json([
            'status'    => true,
            'message'   => 'register successfully', 
            'data'    => $user,
         
        ], 200);
    }

  
    public function user_update(Request $request)
    {
        
       
        $user = auth()->user();
        
        /* data validator */
        $validator = Validator::make($request->all(), [
            'username' => 'required|min:4|max:20|unique:tbl_users',
            'role' => 'required|in:user,admin',
            'profile_image' => 'required|mimes:jpg,png,jpeg,gif',
        ]);


        /* validator fails errors */
        if ($validator->fails()) {
            return response()->json([
                'status'    => false,
                'message'   => 'Parameter invalid', 
                'errors'    => $validator->errors(),
            ], 200);
        }

        $userUpdate = User::where('id',$user->id)->first();

        $fileName = null;
        if($request->profile_image){
            $fileName = time().'.'.$request->profile_image->extension();  
            $request->profile_image->move(public_path('public/profile_image/'), $fileName);
            $user->profile_image = "profile_image/".$fileName;
        }

        $userUpdate->username = $request->username;
        $userUpdate->role = $request->role;
        $userUpdate->password = bcrypt($request->password);
        $userUpdate->save();

        return response()->json([
            'status'    => false,
            'message'   => 'Update user successfully', 
            'errors'    => $userUpdate,
        ], 200);

    }
 

    public function user_verification(Request $request)
    {
     
        
        /* data validator */
        $validator = Validator::make($request->all(), [
            'code' => 'required|digits_between:1,6',
            'email' => 'email|required',
        ]);


        /* validator fails errors */
        if ($validator->fails()) {
            return response()->json([
                'status'    => false,
                'message'   => 'Parameter invalid', 
                'errors'    => $validator->errors(),
            ], 200);
        }

        $user = User::where('email',$request->email)->first();

        /* check verification code */
        if($user->verification_code == $request->code) {

            $user->is_verified = 1;
            $user->verification_code =null;
            $user->save();

            $accessToken = $user->createToken('authToken')->accessToken;
           // $accessToken = Auth::user()->createToken('authToken')->accessToken;

            $response['status'] = true;
            $response['message'] = 'User verified';
           // $response['data'] = Auth::user();
            $response['token'] = $accessToken;

        } else {
            $response['status'] = false;
            $response['message'] = "The OTP you've entered is incorrect. Please try again."; 
        }

        return response()->json($response, 200);

    }
}   
