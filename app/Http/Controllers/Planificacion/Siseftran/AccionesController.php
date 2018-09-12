<?php

namespace Sinapptic\Http\Controllers\Planificacion\Siseftran;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

class AccionesController extends Controller
{
    var $sidebar = '';

    public function __construct()
    {
        //dd(\Request::input('op'));
        $objPanel = \DB::table('panel_opciones')
            ->select('panel_opciones.id as panel_opcion_id','panel_opciones.name as panel_opcion','panel_opciones.icon')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->where('aplicativos.url','siseftran/plannacional')
            ->orderBy('panel_opciones.order')
            ->get();

        foreach($objPanel as $panel) :
            $this->sidebar .= "<li>
                <a href='#'><i class='$panel->icon'></i> $panel->panel_opcion <span class='fa fa-chevron-down'></span></a>
                <ul class='nav child_menu'>";
            $objOpciones = \DB::table('opciones')
                ->select('opciones.id as opcion_id','opciones.name as opcion','opciones.url as url')
                ->join('panel_opciones','opciones.panel_opcion_id','=','panel_opciones.id')
                ->where('panel_opciones.id',$panel->panel_opcion_id)
                ->orderBy('opciones.order')
                ->get();
            foreach ($objOpciones as $opcion) :
                $this->sidebar .= "<li><a href='".url($opcion->url)."'>".$opcion->opcion."</a></li>";
            endforeach;
            $this->sidebar .= "</ul></li>";
        endforeach;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //cargar las acciones
        $acciones = \DB::connection('pgsql')
            ->table('plan_acciones')
            ->where('plan_acciones.anio',2016)
            ->whereNotNull('plan_acciones.nombre')
            ->orderBy('plan_acciones.codigo')
            ->get();

        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planterritorial.acciones',compact('acciones', 'sidebar'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    public function getProyectos(Request $request)
    {
        //cargar los objetivos de desarrollo territorial
        $proyectos = \DB::connection('pgsql')
            ->table('plan_proyectos')
            ->select('plan_proyectos.nombre as nombre','plan_proyectos.*')
            ->where('plan_proyectos.anio',2016)
            ->whereNotNull('plan_proyectos.nombre')
            ->join('plan_acciones','plan_proyectos.id_accion','=','plan_acciones.id')
            ->where('plan_proyectos.id_accion',$request->input('id'))
            ->orderBy('plan_proyectos.codigo')
            ->get();
        //dd($request->input('id'));
        return view('planificacion.siseftran.planterritorial.acciones.components.proyectos',compact('proyectos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //cargar las meta de un objeitvo
        $acciones = \DB::connection('pgsql')
            ->table('plan_acciones')
            ->select('plan_acciones.id as id_meta',
                'plan_acciones.nombre as nombre',
                'plan_acciones.id_obj as id_obj',
                'plan_acciones.codigo as codigo',
                'plan_acciones.*')
            ->where('plan_acciones.anio',2016)
            ->where('plan_acciones.id_obj',$id)
            ->where('plan_acciones.id_acc_t',0)
            ->whereNotNull('plan_acciones.nombre')
            ->orderBy('plan_acciones.codigo')
            ->get();


        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planterritorial.acciones.index',compact('acciones', 'sidebar'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
