<?php

namespace App\Http\Controllers\APIs\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Mail;

class LoginController extends Controller
{
    /** 
     * Handle an authentication attempt.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */ 
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        /* data validator */
        $validator = Validator::make($credentials, [
            'email' => 'email|required',
            'password' => 'required'
        ]);
     
        /* validator fails errors */
        if ($validator->fails()) {
            return response()->json([
                'status'    => false,
                'message'   => 'Parameter invalid', 
                'errors'    => $validator->errors(),
            ], 200);
        }

        /* attempt login */
        if (!Auth::attempt($credentials)) {
            return response()->json([
                'status'    => false,
                'message'   => 'Invalid credentials', 
                'errors'    => array(),
            ], 200);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;

        return response()->json([
            'status'    => true,
            'message'   => 'login successfully', 
            'data'    => Auth::user(),
            'access_token' => 'Bearer '.$accessToken
        ], 200);
    }


    public function forgot_password(Request $request)
    {
        $validator = Validator::make($request->all(), [
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

      
        $user = User::where(array('email'=>$request->email))->first();

        if(empty($user)){
            return response()->json([
                'status'    => false,
                'message'   => 'email Adrress not found', 
                'errors'    => 'email Adrress not found',
            ], 200);
        }

        $user->verification_code = rand(1000,9999);
        $user->save();

        $mail_content = "Your forgot password code is ". $user->verification_code;

        Mail::raw($mail_content, function ($message) use($user) {
            $message->from('noreply@ebizzdevelopment.com', 'Dog Dating');
            $message->to($user->email);
            $message->subject("Forgot password Code");
        });

        return response()->json([
            'status'    => true,
            'message'   => 'send otp in email', 
            'data'    => [],
        ], 200);
    }

    public function check_otp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'email|required',
            'otp' => 'required',
        ]);


        /* validator fails errors */
        if ($validator->fails()) {
            return response()->json([
                'status'    => false,
                'message'   => 'Parameter invalid', 
                'errors'    => $validator->errors(),
            ], 200);
        }

        $user = User::where(array('email'=>$request->email))->first();

        if(empty($user)){
            return response()->json([
                'status'    => false,
                'message'   => 'Email not found', 
                'errors'    => 'Email not found',
            ], 200);
        }

        
        if($request->otp!=$user->verification_code){
            return response()->json([
                'status'    => false,
                'message'   => "The OTP you've entered is incorrect. Please try again.", 
                'errors'    => "The OTP you've entered is incorrect. Please try again.",
            ], 200);
        }
        
        $user->verification_code = null;
        $user->is_verified = "1";

        $user->save();

        return response()->json([
            'status'    => true,
            'message'   => 'OTP match successfully', 
            'data'    =>  $user,
        ], 200);
    }

    public function send_otp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'email|required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status'    => false,
                'message'   => 'Parameter invalid', 
                'errors'    => $validator->errors(),
            ], 200);
        }
        
        $user = User::where(array('email'=>$request->email))->first();

        if(empty($user)){
            return response()->json([
                'status'    => false,
                'message'   => 'Email not found', 
                'errors'    => 'Email not found',
            ], 200);
        }

        $user->verification_code = rand(1000,9999);
        $user->save();

        $mail_content = "Your verification code is ". $user->verification_code;

        Mail::raw($mail_content, function ($message) use($user) {
            $message->from('noreply@ebizzdevelopment.com', 'Dog Dating');
            $message->to($user->email);
            $message->subject("Verification Code");
        });

        if (Mail::failures()) {
            return response()->json([
                'status'  => false,
                'message' => 'Mail sending failed',
                'errors'  => array(),
            ]);
        }

        return response()->json([
            'status'    => true,
            'message'   => 'Verification code send successfully', 
            'data'    => $user,
        ], 200);

    }

    public function change_password(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'email|required',
            'password' => 'required|min:6',
            'confirm_password' => 'required|min:6',
        ]);


        /* validator fails errors */
        if ($validator->fails()) {
            return response()->json([
                'status'    => false,
                'message'   => 'Parameter invalid', 
                'errors'    => $validator->errors(),
            ], 200);
        }

        $user = User::where(array('email'=>$request->email))->first();

        if(empty($user)){
            return response()->json([
                'status'    => false,
                'message'   => 'User not found', 
                'errors'    => 'User not found',
            ], 200);
        }

        if($request->password!=$request->confirm_password){
            return response()->json([
                'status'    => false,
                'message'   => 'Password and confirm password not match', 
                'errors'    => 'Password and confirm password not match',
            ], 200);
        }
        
        $user->password = bcrypt($request->password);
        $user->save();

        return response()->json([
            'status'    => true,
            'message'   => 'Password updated successfully.', 
            'data'    => [],
        ], 200);
    }
}
