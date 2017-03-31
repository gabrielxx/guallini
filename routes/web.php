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

Route::get('admin','userController@login');
Route::post('admin/iniciar_sesion','userController@validarUsuario');
Route::get('admin/listPropiedades','propiedadesController@listPropiedades');

Auth::routes();

Route::get('/admin', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');
Route::group(['middleware' => ['auth']], function(){

	Route::get('propiedades','propiedadesController@listPropiedades');

});