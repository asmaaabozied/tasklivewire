<?php

use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PerfumeController;







Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ], function () {

Auth::routes();
    /* Start Admin Routes */

    Route::prefix('admin')->middleware(['auth', 'ActiveAccount'])->name('admin.')->namespace('App\Http\Controllers\Dashboard')->group(function () {


        //users && post
        Route::view('users', 'dashboard.users.index');
        Route::view('post', 'dashboard.post.index');
        Route::view('comments', 'dashboard.comments.index');





    });

    /* End Admin Routes */


// Front End Route

      Route::get('/', function () {
    return view('layouts.front');
});


});
// hanan 2



