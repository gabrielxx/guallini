<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::resource('/','propiedadesController');
Route::post('buscarPropiedad','propiedadesController@search');
Route::get('propiedad/{id}','propiedadesController@show');
Route::get('barrio','propiedadesController@showBarrio');
Route::get('preguntas','propiedadesController@preguntas');
Route::get('maps','propiedadesController@map');
Route::get('maps2','propiedadesController@map2');
Route::get('empresa','propiedadesController@empresa');

