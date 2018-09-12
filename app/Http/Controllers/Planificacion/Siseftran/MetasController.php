<?php

namespace Sinapptic\Http\Controllers\Planificacion\Siseftran;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

class MetasController extends Controller
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
        //cargar las metas
        $metas = \DB::connection('pgsql')
            ->table('plan_metas')
            ->where('plan_metas.anio',2016)
            ->whereNotNull('plan_metas.nombre')
            ->orderBy('plan_metas.codigo')
            ->get();

        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planterritorial.metas',compact('metas', 'sidebar'));
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
        //cargar las meta de un objeitvo
        $metas = \DB::connection('pgsql')
            ->table('plan_metas_terr')
            ->select('plan_metas_terr.id as id_meta',
                'plan_metas_terr.nombre as nombre',
                'plan_metas_terr.id_obj as id_obj',
                'plan_metas_terr.codigo as codigo',
                'cat_concepto.nombre as concepto',
                'plan_nacional.nombre as meta_nacional',
                'plan_metas_terr.*')
            ->join('cat_concepto', 'plan_metas_terr.id_cat_concepto','=','cat_concepto.id')
            ->join('plan_nacional', 'plan_metas_terr.id_meta_nac','=','plan_nacional.id')
            ->where('plan_metas_terr.anio',2016)
            ->where('plan_metas_terr.id_obj',$id)
            ->whereNotNull('plan_metas_terr.nombre')
            ->orderBy('plan_metas_terr.codigo')
            ->get();


        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planterritorial.metas.index',compact('metas', 'sidebar'));
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
