<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::get('user', [UserController::class, 'index']);
Route::get('user/{id}', [UserController::class, 'show']);
Route::post('user/create', [UserController::class, 'store']);
Route::post('user/{id}', [UserController::class, 'update']);
Route::delete('user/{id}', [UserController::class, 'destroy']);