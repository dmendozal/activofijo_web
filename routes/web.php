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


Route::get('/', function () {
    return view('auth.login');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth']], function () {

    //MODULO USUARIOS
    Route::resource('permisos', 'PermisoController');
    Route::resource('roles', 'RolesController');
    Route::resource('usuarios', 'UsersController');

    //MODULO ACTIVOS
    Route::resource('activo', 'ActivoController');
    Route::resource('ubicacion', 'UbicacionController');
    Route::resource('estado', 'EstadoController');
    Route::resource('bien', 'BienController');
    Route::resource('asignacion', 'AsignacionController');
    Route::resource('mantenimiento', 'MantenimientoController');

    //OTROS
    Route::resource('empresa', 'EmpresaController');
    Route::get('prueba', 'VisitasController@hit');
    Route::get('prueba1', 'VisitasController@cantidad');
    Route::get('estadisticas', 'EstadisticaController@activosPorAula');
    Route::get('estadisticasPorcostos', 'EstadisticaController@activosPorAulaycostos');
    Route::get('reporte', 'EstadisticaController@activosPorAulaR');

});
