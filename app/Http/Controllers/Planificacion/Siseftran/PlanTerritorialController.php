<?php

namespace Sinapptic\Http\Controllers\Planificacion\Siseftran;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

class PlanTerritorialController extends Controller
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
                <a href='#$panel->panel_opcion'><i class='$panel->icon icon'>
                <b class='bg-success'></b>
                </i>
                <span class='pull-right'>
                  <i class='fa fa-angle-down text'></i>
                  <i class='fa fa-angle-up text-active'></i>
                </span>
                <span>$panel->panel_opcion</span>
                </a>
                <ul class='nav lt'>";
            $objOpciones = \DB::table('opciones')
                ->select('opciones.id as opcion_id','opciones.name as opcion','opciones.url as url')
                ->join('panel_opciones','opciones.panel_opcion_id','=','panel_opciones.id')
                ->where('panel_opciones.id',$panel->panel_opcion_id)
                ->orderBy('opciones.order')
                ->get();
            foreach ($objOpciones as $opcion) :
                $this->sidebar .= "<li><a href='".url($opcion->url)."'>
                                        <i class='fa fa-angle-right'></i>
                                        <span>".$opcion->opcion."</span>
                                    </a>
                                    </li>";
            endforeach;
            $this->sidebar .= "</ul></li>";
        endforeach;
        //dd($this->sidebar);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // cargar la vision territorial
        $vision = \DB::connection('pgsql')
            ->table('m_y_v')
            ->where('id',2)
            ->get();

        //cargar los ejes de desarrollo territorial
        $ejes = \DB::connection('pgsql')
            ->table('plan_ejes')
            ->where('plan_ejes.anio',2016)
            ->whereNotNull('plan_ejes.nombre')
            ->orderBy('plan_ejes.codigo')
            ->get();


        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planterritorial.index',compact('vision','ejes','sidebar'));
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

    public function getObjetivos(Request $request)
    {
        //cargar los objetivos de desarrollo territorial
        $objetivos = \DB::connection('pgsql')
            ->table('plan_objetivos')
            ->select('plan_objetivos.*', 'plan_nacional.nombre as pnac_nombre')
            ->where('plan_objetivos.anio',2016)
            ->where('plan_objetivos.codigo_nivel', 5)
            ->where('plan_objetivos.tipo', 'e')
            ->where('plan_objetivos.id_rel',$request->input('id'))
            ->join('plan_nacional','plan_objetivos.id_old','=','plan_nacional.id')
            ->orderBy('plan_objetivos.codigo')
            ->get();
        //dd($request->input('id'));
        return view('planificacion.siseftran.planterritorial.components.objetivos',compact('objetivos'));
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
        //
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
