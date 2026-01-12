<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PayFastController;

Route::get('/', function () {
    return view('home');
});
Route::get('/{any}', fn () => view('app'))
  ->where('any', '.*');

Route::post('/payfast/initiate', [PayFastController::class, 'initiate']);
