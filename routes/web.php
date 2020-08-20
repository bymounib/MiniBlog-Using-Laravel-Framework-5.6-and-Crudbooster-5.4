<?php

use RealRashid\SweetAlert\Facades\Alert;

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
Route::get('article/{id}/{id_author_article}','FrontController@getArticle');
Route::post('/comment','FrontController@save')->middleware('auth');

Route::post('/profile/{id_cms_users}/name','FrontController@update')->middleware('auth');

Route::get('/','FrontController@getIndex');
Route::get('category/more','FrontController@more_category');

Route::get('category/{id_category}','FrontController@getCategory');
Route::get('/accueil','FrontController@getIndex');

Route::get('/mesarticles/{id_cms_users}','FrontController@mesarticles')->middleware('auth');
Route::get('/profile/{id_cms_users}','FrontController@profile')->middleware('auth');

Route::get('/ajout/{id_cms_users}/{art}','FrontController@Ajout')->middleware('auth');
Route::post('/ajout/{id_cms_users}/{art}','FrontController@saveAjout')->middleware('auth');

Route::get('/modifier/{id_cms_users}/{id_article}','FrontController@ModifierArticle')->middleware('auth');
Route::post('/modifier/{id_cms_users}/{id_article}','FrontController@saveUpdate')->middleware('auth');

Route::post('/supprimer/{id_cms_users}/{id_article}','FrontController@DeleteArticle')->middleware('auth');

Route::post('/editphoto','FrontController@editphoto')->middleware('auth');

Route::get('pagenotfound',['as'=>'notfound','uses'=>'FrontController@pagenotfound']);

Auth::routes();

