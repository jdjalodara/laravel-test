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
Route::post('user-verify', 'App\Http\Controllers\APIs\Auth\RegisterController@user_verification');

// Route::post('login', 'App\Http\Controllers\APIs\Auth\LoginController@login');
// Route::post('forgot-password', 'App\Http\Controllers\APIs\Auth\LoginController@forgot_password');
// Route::post('check-otp', 'App\Http\Controllers\APIs\Auth\LoginController@check_otp');
// Route::post('change-password', 'App\Http\Controllers\APIs\Auth\LoginController@change_password');
// Route::post('send-otp', 'App\Http\Controllers\APIs\Auth\LoginController@send_otp');


/* auth routes */
Route::middleware(['auth:api'])->group(function () {
    
    Route::post('user-update', 'App\Http\Controllers\APIs\Auth\RegisterController@user_update');

    // Route::get('logout', 'App\Http\Controllers\APIs\Auth\LoginController@logout');

    // /* user verification */
    // Route::get('resend_code', 'App\Http\Controllers\APIs\Auth\RegisterController@resend_code');
    // Route::post('user_verification', 'App\Http\Controllers\APIs\Auth\RegisterController@user_verification');

    // /* listing */
    // Route::get('member_category_list', 'App\Http\Controllers\APIs\CommonController@member_category_list');
    // Route::get('country_list', 'App\Http\Controllers\APIs\CommonController@country_list');
    // Route::get('dogbreeds_list', 'App\Http\Controllers\APIs\CommonController@dogbreeds_list');
    // Route::get('colors_list', 'App\Http\Controllers\APIs\CommonController@color_list');


    // /* user */
    // Route::resource('user', 'App\Http\Controllers\APIs\UserController');
    // Route::resource('user_post', 'App\Http\Controllers\APIs\UserPostController');
    // Route::post('update-password', 'App\Http\Controllers\APIs\UserController@updatePassword');
    // Route::post('update-username', 'App\Http\Controllers\APIs\UserController@updateUsername');

    // /* dog */
    // Route::post('dog', 'App\Http\Controllers\APIs\DogController@store');
    // Route::post('update-dog-profile', 'App\Http\Controllers\APIs\DogController@updateDogProfile');
    // Route::post('get-dogs', 'App\Http\Controllers\APIs\DogController@getDogs');
    // Route::get('dog-detail/{id}', 'App\Http\Controllers\APIs\DogController@getDogDetail');
    // Route::get('dog-remove-profile/{id}', 'App\Http\Controllers\APIs\DogController@dogRemoveProfile');
    // Route::get('dog-remove-post/{id}', 'App\Http\Controllers\APIs\DogController@dogRemovePost');
    // Route::post('dog-image-update', 'App\Http\Controllers\APIs\DogController@updateDogImage');
    // Route::post('get-dog-stories', 'App\Http\Controllers\APIs\DogController@dogStoriesList');

    
    // Route::resource('dog_post', 'App\Http\Controllers\APIs\DogPostController');

    // // dog story-post
    // Route::post('dog-story-post', 'App\Http\Controllers\APIs\DogStoryController@store');


    // // followers users list
    // Route::post('follower-user-list', 'App\Http\Controllers\APIs\FollowerController@userlist'); 
    // Route::post('following-request', 'App\Http\Controllers\APIs\FollowerController@followingRequest'); 
    // Route::post('followed-user-list', 'App\Http\Controllers\APIs\FollowerController@followedUser'); 
    // Route::post('unfollowed', 'App\Http\Controllers\APIs\FollowerController@unfollowed'); 


    // // favorite dog list
    // Route::post('favorite-add', 'App\Http\Controllers\APIs\FavoriteDogController@favoriteCreate'); 
    // Route::post('favorite-list', 'App\Http\Controllers\APIs\FavoriteDogController@favoriteList'); 
    // Route::post('favorite-remove', 'App\Http\Controllers\APIs\FavoriteDogController@favoriteRemove'); 

    // // Dog feeds
    // Route::post('dog-feeds', 'App\Http\Controllers\APIs\DogController@dogFeeds');


    // // Dog & user Swipe
    // Route::post('dog-swipe', 'App\Http\Controllers\APIs\SwipeController@swipeDog');
    // Route::post('dog-swipe-list', 'App\Http\Controllers\APIs\SwipeController@swipeDogList');
    // Route::post('user-swipe', 'App\Http\Controllers\APIs\SwipeController@swipeUser');
    // Route::post('user-swipe-list', 'App\Http\Controllers\APIs\SwipeController@swipeUserList');

    
    // // Dog Swag
    // Route::post('dog-swag', 'App\Http\Controllers\APIs\SwagController@swagDog');
    // Route::post('dog-swag-list', 'App\Http\Controllers\APIs\SwagController@swagDogList');
    // Route::post('dog-swag-request-list', 'App\Http\Controllers\APIs\SwagController@swagDogRequestList');
    // Route::post('dog-swag-request-action', 'App\Http\Controllers\APIs\SwagController@swagDogAction');

    
    // //user settings
    // Route::post('defult-settings-save', 'App\Http\Controllers\APIs\SettingsController@saveSettings');
    // Route::post('get-user-settings', 'App\Http\Controllers\APIs\SettingsController@getUserSettings');
    // Route::post('get-single-setting', 'App\Http\Controllers\APIs\SettingsController@getSingleSetting');
    // Route::post('save-update-satting', 'App\Http\Controllers\APIs\SettingsController@saveUpdateSetting');

    // //Dog History
    // Route::post('save-update-dog-history', 'App\Http\Controllers\APIs\DogHistoryController@saveUpdateDogHistory');
    // Route::post('get-dog-history', 'App\Http\Controllers\APIs\DogHistoryController@getDogHistory');
    // Route::post('search-dogs', 'App\Http\Controllers\APIs\DogHistoryController@searchHistory');
});
