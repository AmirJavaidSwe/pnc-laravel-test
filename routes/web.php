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

Route::group(['middleware' => 'checklanguage'], function () {
	Route::get('/', function () {
		return redirect('/login');
	});

	Auth::routes();
	Route::post('/change_lang', 'ChangeLanguageController@changeLang')->name('change_lang');
	Route::group(['middleware' => 'auth'], function () {
		Route::get('/home', 'HomeController@index')->name('home');
		Route::resources([
			'companies' => 'CompanyController',
			'employees' => 'EmployeeController'
		]);
	});
});