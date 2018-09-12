<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Registration routes...
Route::controllers([
    'auth'     => 'Auth\AuthController',
    'password' => 'Auth\PasswordController'
	]);


Route::group(['middleware' => 'auth'],  function() {

    Route::group(['prefix'=>'core'], function() {

        Route::get('/', 'Core\coreController@index');
        Route::controller('users', 'Core\usersController');
        Route::controller('grupos', 'Core\gruposController');
        Route::controller('gruposusers', 'Core\gruposusersController');
        Route::controller('instituciones', 'Core\institucionesController');
        Route::controller('departamentos', 'Core\departamentosController');
        Route::controller('aplicativos', 'Core\aplicativosController');
        Route::controller('cargabiometrico', 'Core\cargabiometricoController');
        Route::get('gruposlist', function () {
            return Sinapptic\grupos::lists('name','id');
        });
    });

    
    Route::controller('biometrico', 'Rrhh\BiometricoController');
    Route::group(['prefix'=>'biometrico'], function() {
        Route::controller('asistencia', 'Rrhh\AsistenciaController');
        Route::controller('justificacion', 'Rrhh\JustificacionController');
        Route::controller('permiso', 'Rrhh\PermisoController');
    });

    Route::group(['prefix'=>'laboral'], function() {
        Route::controller('utilesoficina', 'Rrhh\UtilesoficinaController');
    });

    Route::group(['prefix'=>'autorizaciones'], function() {

        Route::get('/', 'Rrhh\AutorizacionesController@index');
        Route::controller('solicitudes', 'Rrhh\SolicitudesController');
    });

    Route::group(['prefix'=>'despacho'], function() {

        Route::get('/', 'Rrhh\DespachoController@getIndex');
        Route::controller('solicitudes', 'Rrhh\DespachoController');

    });

    
    //RUTAS DE PDF
    Route::get('/PdfDemo', ['as'=>'PdfDemo','uses'=>'Pdf\PdfManagerController@index']);
    Route::get('/previewpdfsol/{id}', 'Pdf\PdfManagerController@previewPdfSol');
    Route::get('/savepdfsol/{id}', 'Pdf\PdfManagerController@savePdfSol');
    Route::get('/verpdfsol/{id}', 'Pdf\PdfManagerController@verPdfSol');
    Route::get('/downloadpdfsol/{id}', 'Pdf\PdfManagerController@downloadPdfSol');

    Route::get('/load-pdf/{id}', 'Pdf\PdfManagerController@loadPDF');
    Route::get('/html-to-pdf', ['as'=>'HtmlToPDF','uses'=>'Pdf\PdfManagerController@htmlToPDF']);
    Route::post('/uploadpdfsol', 'Pdf\PdfManagerController@UploadPdfSol');
 
    //BLOG

    Route::get('blog', [
        'uses' => 'Blog\PostController@index',
        'as' => 'blog.index'
    ]);

    Route::get('blog/dtable',[
        'uses' => 'Blog\Postcontroller@dtable',
        'as' => 'blog.dtable'
    ]);

    Route::get('blog/create',[
        'uses' => 'Blog\PostController@create',
        'as' => 'blog.create'
    ]);

    Route::post('blog/store', [
        'uses' => 'Blog\PostController@store',
        'as' => 'blog.store'
    ]);

    
    
    // LABORAL

    Route::get('laboral',[
        'uses' => 'Rrhh\LaboralController@index',
        'as' => 'laboral.index'
    ]);

    

    Route::post('laboral/import/{file}',[
        'uses' => 'Core\cargaBiometricoController@import',
        'as' => 'laboral.carga.import'
    ]);

    Route::get('laboral/carga/store',[
        'uses' => 'Core\cargaBiometricoController@store',
        'as' => 'laboral.carga.store'
    ]);

    Route::get('laboral/enlazar',[
        'uses' => 'Rrhh\enlazarController@index',
        'as' => 'laboral.enlazar'
    ]);

    Route::get('laboral/create',[
        'uses' => 'Rrhh\LaboralController@create',
        'as' => 'laboral.create'
    ]);

    Route::get('laboral/edit/{id}', [
        'uses' => 'Rrhh\LaboralController@edit',
        'as' => 'laboral.edit'
    ]);

    Route::post('laboral/store',[
        'uses' => 'Rrhh\LaboralController@store',
        'as'=> 'laboral.store'

    ]);
    Route::put('laboral/update/{id}', [
        'uses' => 'Rrhh\LaboralController@update',
        'as' => 'laboral.update'
    ]);

    Route::post('laboral/asignar/{id}',[
        'uses' => 'Rrhh\LaboralController@asignar',
        'as' => 'laboral.asignar'
    ]);

    Route::delete('laboral/destroy/{id}',[
        'uses' => 'Rrhh\LaboralController@destroy',
        'as' => 'laboral.destroy'
    ]);



    //DOCRECEPTOR

    Route::get('docreceptor',[
        'uses' => 'Rrhh\DocreceptorController@index',
        'as' => 'docreceptor.index'
    ]);

    Route::get('docreceptor/create',[
        'uses' => 'Rrhh\DocreceptorController@create',
        'as' => 'docreceptor.create'

    ]);

    Route::get('docreceptor/edit/{id}', [
        'uses' => 'Rrhh\DocreceptorController@edit',
        'as' => 'docreceptor.edit'
    ]);

    Route::post('docreceptor/store',[
        'uses' => 'Rrhh\DocreceptorController@store',
        'as'=> 'docreceptor.store'

    ]);
    Route::put('docreceptor/update/{id}', [
        'uses' => 'Rrhh\DocreceptorController@update',
        'as' => 'docreceptor.update'
    ]);

    Route::post('docreceptor/asignar/{id}',[
        'uses' => 'Rrhh\DocreceptorController@asignar',
        'as' => 'docreceptor.asignar'
    ]);

    Route::delete('docreceptor/destroy/{id}',[
        'uses' => 'Rrhh\DocreceptorController@destroy',
        'as' => 'docreceptor.destroy'
    ]);

    //SISEFTRAN

    Route::get('siseftran/planinstitucional',[
        'uses' => 'Planificacion\Siseftran\PlanInstitucionalController@index',
        'as' => 'siseftran.planinstitucional.index'
    ]);

    Route::get('siseftran/planinstitucional/proyectos',[
        'uses' => 'Planificacion\Siseftran\ProyectosController@index',
        'as' => 'siseftran.planinstitucional.proyectos'
    ]);

    Route::get('siseftran/planinstitucional/proyectos/{proyecto}', 'Planificacion\Siseftran\ProyectosController@show')->where('proyecto','[0-9]+');

    Route::get('siseftran/planinstitucional/getAcciones',[
        'uses' => 'Planificacion\Siseftran\ProyectosController@getAcciones',
        'as' => 'siseftran.planinstitucional.getAcciones'
    ]);

    Route::post('siseftran/planinstitucional/getIndicadores',[
        'uses' => 'Planificacion\Siseftran\ProyectosController@getIndicadores',
        'as' => 'siseftran.planinstitucional.getIndicadores'
    ]);

    Route::post('siseftran/planinstitucional/getActividades',[
        'uses' => 'Planificacion\Siseftran\ProyectosController@getActividades',
        'as' => 'siseftran.planinstitucional.getActividades'
    ]);

    Route::post('siseftran/planinstitucional/getCronograma',[
        'as' => 'siseftran.planinstitucional.getCronograma',
        'uses' => 'Planificacion\Siseftran\ProyectosController@getCronograma'
    ]);

    Route::get('siseftran/planinstitucional/edit/{id}',[
        'uses' => 'Planificacion\Siseftran\PlanInstitucionalController@edit',
        'as' => 'siseftran.planinstitucional.edit'
    ]);

    Route::post('siseftran/planinstitucional/getObjetivos',[
        'uses' => 'Planificacion\Siseftran\PlanInstitucionalController@getObjetivos',
        'as' => 'siseftran.planinstitucional.getObjetivos'
    ]);

    Route::post('siseftran/planinstitucional/getProyectos',[
        'uses' => 'Planificacion\Siseftran\AccionesController@getProyectos',
        'as' => 'siseftran.planinstitucional.getProyectos'

    ]);

    Route::get('siseftran/planinstitucional/metas/show/{id}',[
        'uses' => 'Planificacion\Siseftran\MetasController@show',
        'as' => 'siseftran.planinstitucional.metas.show',

    ]);

    Route::get('siseftran/planinstitucional/acciones/show/{id}',[
        'as' => 'siseftran.planinstitucional.acciones.show',
        'uses' => 'Planificacion\Siseftran\AccionesController@show'
    ]);

    Route::get('siseftran/planterritorial',[
        'as' => 'siseftran.planterritorial.index',
        'uses' => 'Planificacion\Siseftran\PlanTerritorialController@index'
    ]);

    Route::get('siseftran/planterritorial/edit/{id}',[
        'as' => 'siseftran.planterritorial.edit',
        'uses' => 'Planificacion\Siseftran\PlanTerritorialController@edit'
    ]);

    Route::post('siseftran/planterritorial/getObjetivos',[
        'as' => 'siseftran.planterritorial.getObjetivos',
        'uses' => 'Planificacion\Siseftran\PlanTerritorialController@getObjetivos'
    ]);

    Route::post('siseftran/planterritorial/getProyectos',[
        'as' => 'siseftran.planterritorial.getProyectos',
        'uses' => 'Planificacion\Siseftran\AccionesController@getProyectos'
    ]);

    Route::get('siseftran/planterritorial/metas/show/{id}',[
        'as' => 'siseftran.planterritorial.metas.show',
        'uses' => 'Planificacion\Siseftran\MetasController@show'
    ]);

    Route::get('siseftran/planterritorial/acciones/show/{id}',[
        'as' => 'siseftran.planterritorial.acciones.show',
        'uses' => 'Planificacion\Siseftran\AccionesController@show'
    ]);

    Route::get('siseftran/plannacional',[
        'as' => 'siseftran.plannacional.index',
        'uses' => 'Planificacion\Siseftran\PlanNacionalController@index'
    ]);

    Route::get('siseftran/plannacional/edit/{id}',[
        'as' => 'siseftran.plannacional.edit',
        'uses' => 'Planificacion\Siseftran\planNacionalController@edit'
    ]);

    // PROYECTOS Y SEGUIMIENTO

    Route::get('proyectos',[
        'as' => 'proyectos.index',
        'uses' => 'Proyectos\homeController@index'
    ]);

    Route::get('proyectos/lineaFin',[
        'as' => 'proyectos.lineaFin.index',
        'uses' => 'Proyectos\lineaFinController@index'
    ]);

    Route::get('proyectos/viabilidad',[
        'as' => 'proyectos.viabilidad.index',
        'uses' => 'Proyectos\viabilidadController@index'
    ]);

    Route::get('proyectos/foro',[
        'as' => 'proyectos.foro.index',
        'uses' => 'Proyectos\foroController@index'
    ]);
/*
    Route::get('proyectos/modelos',[
        'as' => 'proyectos.modelos.index',
        'uses' => 'Proyectos\modelosController@index'
    ]);

    Route::get('proyectos/amortizacion',[
        'as' => 'proyectos.amortizacion.index',
        'uses' => 'Proyectos\amortizacionController@index'
    ]);
*/
    Route::get('applist', [
        'uses' => 'Core\AppListController@index',
        'as' => 'applist'
    ]);

    Route::get('proyect', [
        'uses' => 'Core\AppListController@proyectos',
        'as' => 'proyect'
    ]);


});


Route::get('/', [
	'uses' => 'HomeController@index',
	'as' => 'home'
	]);

Route::get('logout', [
    'uses' => 'Auth\AuthController@logout',
    'as' => 'logout'
    ]);

//Route::get('account', function() {
//	return view('account');
//});
//
//Route::get('edit-post/{id}', function($id) {
//	Auth::loginUsingId(2);
//	$post = Sinapptic\Post::findOrFail($id);
//
//	if(Gate::denies('update-post', $post))
//	{
//		abort(403);
//	}
//
//	return $post->title;
//});