<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});
Route::get('/{any}', fn () => view('app'))
  ->where('any', '.*');
