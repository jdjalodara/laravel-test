<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\Auth\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* guest routes */
Route::post('register', 'App\Http\Controllers\APIs\Auth\RegisterController@register');
Route::post('login', 'App\Http\Controllers\APIs\Auth\LoginController@login');
Route::post('forgot-password', 'App\Http\Controllers\APIs\Auth\LoginController@forgot_password');
Route::post('check-otp', 'App\Http\Controllers\APIs\Auth\LoginController@check_otp');
Route::post('change-password', 'App\Http\Controllers\APIs\Auth\LoginController@change_password');



/* auth routes */
Route::middleware(['auth:api'])->group(function () {

    Route::get('logout', 'App\Http\Controllers\APIs\Auth\LoginController@logout');

    /* user verification */
    Route::get('resend_code', 'App\Http\Controllers\APIs\Auth\RegisterController@resend_code');
    Route::post('user_verification', 'App\Http\Controllers\APIs\Auth\RegisterController@user_verification');

    /* listing */
    Route::get('member_category_list', 'App\Http\Controllers\APIs\CommonController@member_category_list');
    Route::get('country_list', 'App\Http\Controllers\APIs\CommonController@country_list');
    Route::get('dogbreeds_list', 'App\Http\Controllers\APIs\CommonController@dogbreeds_list');
    Route::get('colors_list', 'App\Http\Controllers\APIs\CommonController@color_list');


    /* user */
    Route::resource('user', 'App\Http\Controllers\APIs\UserController');
    Route::resource('user_post', 'App\Http\Controllers\APIs\UserPostController');

    /* dog */
    Route::post('dog', 'App\Http\Controllers\APIs\DogController@store');
    Route::post('update-dog-profile', 'App\Http\Controllers\APIs\DogController@updateDogProfile');
    Route::post('get-dogs', 'App\Http\Controllers\APIs\DogController@getDogs');
    Route::get('dog-detail/{id}', 'App\Http\Controllers\APIs\DogController@getDogDetail');
    Route::get('dog-remove-profile/{id}', 'App\Http\Controllers\APIs\DogController@dogRemoveProfile');
    Route::get('dog-remove-post/{id}', 'App\Http\Controllers\APIs\DogController@dogRemovePost');
    Route::post('dog-image-update', 'App\Http\Controllers\APIs\DogController@updateDogImage');

    
   // Route::resource('dog_post', 'App\Http\Controllers\APIs\DogPostController');

    // dog story-post
    Route::post('dog-story-post', 'App\Http\Controllers\APIs\DogStoryController@store');


    // followers users list
    Route::post('follower-user-list', 'App\Http\Controllers\APIs\FollowerController@userlist'); 
    Route::post('following-request', 'App\Http\Controllers\APIs\FollowerController@followingRequest'); 
    Route::post('followed-user-list', 'App\Http\Controllers\APIs\FollowerController@followedUser'); 
    Route::post('unfollowed', 'App\Http\Controllers\APIs\FollowerController@unfollowed'); 


    // favorite dog list
    Route::post('favorite-add', 'App\Http\Controllers\APIs\FavoriteDogController@favoriteCreate'); 
    Route::post('favorite-list', 'App\Http\Controllers\APIs\FavoriteDogController@favoriteList'); 
   
    // Dog feeds
    Route::post('dog-feeds', 'App\Http\Controllers\APIs\DogController@dogFeeds');

    
});
