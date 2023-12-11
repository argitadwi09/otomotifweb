<?php

use Illuminate\Support\Facades\Route;
Use App\Controllers\PostControler;
Use App\Http\Controllers\PostController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::resource('/posts', \App\Http\Controllers\PostController::class);
Route::resource('/blogs', \App\Http\Controllers\ServiceController::class);

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello', function () {
    return 'Hello World';
});

Route::get('/belajar', function () {
    echo '<h1>Hello World</h1>';
    echo '<p> Sedang belajar Laravel</p>';
});

Route::get('/siswa/rpl/Argita', function () {
    echo '<h2 style="text-align: center"><u>Welcome to Laravel, Argita</u></h2>';
});

Route::get('/guru', function () {
    return view('guru');
});
Route::get('/siswa', function () {
    return view('siswa');
});



Route::get('/home1', function () {
    return view('posts\home1');
});

Route::get('/blog', function () {
    return view('posts\blog');
});
Route::get('/About', function () {
    return view('posts\About');
});
Route::get('/Read', function () {
    return view('posts\Read');
});
Route::get('/service', function () {
    return view('posts\service');
});
Route::get('/contact', function () {
    return view('posts\contact');
});


Route::get('/tampil',[PostController::class, 'tampil']);

// Route::get('posts/service',[PostController::class, 'service']);
Route::get('/tampil/search', [PostController::class, 'search']);

Route::get('/blog',[PostController::class, 'blog']);

Route::group(['middleware' => 'guest'], function () {
    Route::get('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/register',[AuthController::class, 'registerPost'])->name('register');
    Route::get('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/login', [AuthController::class, 'loginPost'])->name('login');

});
Route::group(['middleware' => 'auth'], function () {
    Route::get('/posts/index', [Postsontroller::class, 'posts']);
    Route::delete('/logout', [AuthController::class, 'logout'])->name('logout');
});

