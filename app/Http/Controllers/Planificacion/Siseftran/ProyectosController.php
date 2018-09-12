<?php

namespace Sinapptic\Http\Controllers\Planificacion\Siseftran;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

class ProyectosController extends Controller
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
        //carga como opcion las unidades de gestion para elejir que reformar
        $unidadesgestion = \DB::connection('pgsql')
            ->table('plan_org as ug')
            ->select('ug.id', 'ug.nombre')->get();

        foreach($unidadesgestion as $unidadgestion) {
            $ug[$unidadgestion->id] = $unidadgestion->nombre;
        }

        //dd($acciones->toSql());

        // cargar los proyectos
        $forUnion = \DB::connection('pgsql')
            ->table('plan_objetivos as b')
            ->select('b.id as cod_obj_ter', 'b.id as id_obji', 'b.codigo as codigo_obji', 'b.nombre as nombre_obji',
                'C.id as id_acc', 'C.codigo as codigo_acc', 'C.nombre as nombre_acc',
                \DB::raw('(select sum(valor_inicial) from presup_gastos where id_old = 1 and id_activ in(select id from ep_actividades where id_proy = d.id)) as costo_real'),
                \DB::raw('(select count(*) from ep_actividades where codigo > 0 and id_proy = d.id) as t_actividades'),
                \DB::raw('(select count(*) from "plan_MarcoLogico" where id_proyecto = d.id) as t_mlogico'),
                \DB::raw('e.nombre as u_gestion'),
                \DB::raw('d.*'))

            ->leftjoin('plan_acciones as C', function($join) {
                $join->on('b.anio', '=', 'C.anio')
                    ->on('b.id','=','C.id_obj');
            })
            ->leftjoin('ep_proyectos as d', function($joinpr) {
                $joinpr->on('b.anio','=','d.anio')
                    ->on('C.id','=','d.id_accion')
                    ->on('d.estatus','=',\DB::raw(1));
            })
            ->leftjoin('plan_org as e', function($joinorg) {
                $joinorg->on('b.anio','=','e.anio')
                    ->on('d.id_ug','=','e.id');
            })
            ->where('b.anio',2016)
            ->where('b.tipo','=',\DB::raw("'e'"))
            ->where('b.id_rel','=', \DB::raw(0));

        $proyectos = \DB::connection('pgsql')
            ->table('objetivos_terr as A')
            ->select('A.codigo as cod_obj_ter',
                'b.id as id_obji', 'b.codigo as codigo_obji', 'b.nombre as nombre_obji',
                'C.id as id_acc', 'C.codigo as codigo_acc', 'C.nombre as nombre_acc',
                \DB::raw('(select sum(valor_inicial) from presup_gastos where id_old = 1 and id_activ in(select id from ep_actividades where id_proy = d.id)) as costo_real'),
                \DB::raw('(select count(*) from ep_actividades where codigo > 0 and id_proy = d.id) as t_actividades'),
                \DB::raw('(select count(*) from "plan_MarcoLogico" where id_proyecto = d.id) as t_mlogico'),
                \DB::raw('e.nombre as u_gestion'),
                \DB::raw('d.*'))

            ->leftjoin('plan_objetivos as b', function($joinC) {
                $joinC->on('b.codigo_nivel', '=', \DB::raw(0))
                    ->on('b.tipo','=',\DB::raw("'e'"))
                    ->on('A.anio', '=', 'b.anio')
                    ->on('b.id_rel','=','A.id');
            })

            ->leftjoin('plan_acciones as C', function($join) {
                $join->on('A.anio', '=', 'C.anio')
                    ->on('b.id','=','C.id_obj');
            })
            ->leftjoin('ep_proyectos as d', function($joinpr){
                $joinpr->on('A.anio','=','d.anio')
                    ->on('C.id','=','d.id_accion')
                    ->on('d.estatus','=',\DB::raw(1));
            })
            ->leftjoin('plan_org as e', function($joinorg){
                $joinorg->on('A.anio','=','e.anio')
                    ->on('d.id_ug','=','e.id');
            })
            ->where('A.anio',2016)
            ->union($forUnion)
            ->orderBy(\DB::raw('1, 3, 6, 13'))->get();
        //dd($proyectos->toSql());

        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planinstitucional.proyectos.index',compact('ug','proyectos','sidebar'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    public function getAcciones()
    {
        //representa acciones

        $acciones = \DB::connection('pgsql')
            ->table('plan_acciones as a')
            ->select('a.id', 'a.nombre')

            ->leftjoin('ep_proyectos as b', function($joinC) {
                $joinC->on('a.id', '=', 'b.id_accion');
            })
            ->where('a.anio',\DB::raw(2016))
            ->whereIn('a.id_obj',function($wherein){
                $wherein->select('id')
                    ->from('plan_objetivos')
                    ->where('anio',\DB::raw(2016))
                    ->where('codigo_nivel',\DB::raw(0))
                    ->where('tipo',\DB::raw("'e'"))
                    ->whereIn('id_rel', function($wherein2){
                        $wherein2->select('id')
                            ->from('objetivos_terr')
                            ->where('anio',\DB::raw(2016));
                    });
            })
            ->where('a.nivel',\DB::raw(0))
            ->where('b.id','>',\DB::raw(0))
            ->whereRaw('"b"."id_ug" ='.\Request::segment(4))
            ->groupBy(\DB::raw('1, 2'))
            ->orderBy(\DB::raw('1, 2'))->get();

        return view('planificacion.siseftran.planinstitucional.reformas.index',compact('acciones'));
    }

    public function getIndicadores(Request $request)
    {
        //obtiene todos indicadores un proyecto
        $indicadores = \DB::connection('pgsql')
            ->table('ep_indicadores as i')
            ->select('b.nombre as n_tipo_ind', 'c.nombre as n_umedida','i.*')
            ->leftjoin('cat_tipo_indicador as b', function($joinC) {
                $joinC->on('i.id_tipo_ind', '=', 'b.id');
            })
            ->leftjoin('cat_unidad_medida as c', function($joinC) {
                $joinC->on('i.u_medida', '=', 'c.id');
            })
            ->whereRaw('"i"."id_proyecto" ='.$request->id)
            ->orderBy('secu')->get();
        //dd($indicadores->toSql());
        return view('planificacion.siseftran.planinstitucional.proyectos.indicadores.table',compact('indicadores'));
    }

    public function getActividades(Request $request)
    {
        //obtiene todas las actividades de un proyecto
        $actividades = \DB::connection('pgsql')
            ->table('ep_actividades as act')
            ->select('act.id', 'act.nombre')
            ->where('act.id_proy',$request->id_proy)
            ->get();
        //dd($indicadores->toSql());
        return view('planificacion.siseftran.planinstitucional.proyectos.actividades.table',compact('actividades'));

    }

    public function getCronograma(Request $request)
    {
        //obtiene todo el cronograma de un proyecto
        $cronograma = \DB::connection('pgsql')
            ->table('plan_acciones as a')
            ->select('c.id as id_act_sup', 'd.codigo_clasificador', 'e.nombre', 'd.valor_inicial',  'f.nombre as fuente_fin', 'g.*', 'k.grupo1 as grupofis1', 'k.grupo2 as grupofis2', 'k.grupo3 as grupofis3', 'k.grupo4 as grupofis4')
            ->leftjoin('ep_proyectos as b', function($joinB) {
                $joinB->on('a.id', '=', 'b.id_accion');
            })
            ->leftjoin('ep_estrprog as j', function($joinJ) {
                $joinJ->on('b.id_subprog', '=', 'j.id');
            })
            ->leftjoin('ep_actividades as c', function($joinC) {
                $joinC->on('c.codigo', '>', \DB::raw(0))
                    ->on('b.id', '=', 'c.id_proy');
            })
            ->leftjoin('plan_metas as h', function($joinH) {
                $joinH->on('c.id_meta', '=', 'h.id');
            })
            ->leftjoin('cat_concepto as i', function($joinI) {
                $joinI->on('h.id_cat_concepto', '=', 'i.id');
            })
            ->leftjoin('presup_gastos as d', function($joinD) {
                $joinD->on('c.id', '=', 'd.id_activ');
            })
            ->leftjoin('cat_clasificador as e', function($joinE) {
                $joinE->on('d.codigo_clasificador', '=', 'e.codigo');
            })
            ->leftjoin('cat_financ_organismo as f', function($joinF) {
                $joinF->on('f.id', '>', \DB::raw(0))
                    ->on('d.id_financ_organismo', '=', 'f.id');
            })
            ->leftjoin('cronograma_tri as g', function($joinG) {
                $joinG->on('c.id', '=', 'g.id_act');
            })
            ->leftjoin('cronograma_tri_fis as k', function($joinK) {
                $joinK->on('c.id', '=', 'k.id_act');
            })
            ->where('a.anio',\DB::raw(2016))
            ->whereIn('a.id_obj',function($wherein){
                $wherein->select('id')
                        ->from('plan_objetivos')
                        ->where('anio',\DB::raw(2016))
                        ->where('codigo_nivel',\DB::raw(0))
                        ->where('tipo',\DB::raw("'e'"))
                        ->whereIn('id_rel', function($wherein2){
                            $wherein2->select('id')
                                    ->from('objetivos_terr')
                                    ->where('anio',\DB::raw(2016));
                        });
            })
            ->where('a.nivel',\DB::raw(0))
            ->where('b.id','>',\DB::raw(0))
            ->where('b.estatus','=',\DB::raw(1))
            ->whereRaw('"b"."id" ='.$request->id)
            ->orderBy(\DB::raw('1, 2, 3, 4'))->get();
        //dd($cronograma->toSql());
        return view('planificacion.siseftran.planinstitucional.proyectos.cronograma.table',compact('cronograma'));

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
        //obtiene toda la data sobre un proyecto
        $proyecto = \DB::connection('pgsql')
            ->table('plan_acciones as a')
            ->select('b.id', 'b.nombre', 'b.descripcion','a.id as acc_id','a.nombre as acc_nombre', 'a.id_obj', 'o.descripcion as obj_descripcion','m.id as meta_id', 'm.nombre as meta_nombre')

            ->leftjoin('ep_proyectos as b', function($joinC) {
                $joinC->on('a.id', '=', 'b.id_accion');
            })

            ->leftjoin('plan_objetivos as o', function($joinO) {
                $joinO->on('a.id_obj','=','o.id');
            })

            ->leftjoin('plan_metas as m', function($joinM) {
                $joinM->on('o.id','=','m.id_rel');
            })

            ->where('a.anio',\DB::raw(2016))
            ->whereIn('a.id_obj',function($wherein){
                $wherein->select('id')
                        ->from('plan_objetivos')
                        ->where('anio',\DB::raw(2016))
                        ->where('codigo_nivel',\DB::raw(0))
                        ->where('tipo',\DB::raw("'e'"))
                        ->whereIn('id_rel', function($wherein2){
                            $wherein2->select('id')
                                    ->from('objetivos_terr')
                                    ->where('anio',\DB::raw(2016));
                        });
            })
            ->where('a.nivel',\DB::raw(0))
            ->where('b.id','>',\DB::raw(0))
            ->where('b.estatus','=',\DB::raw(1))
            ->whereRaw('"b"."id" ='.$id)
            ->orderBy(\DB::raw('1, 2'))->get();
        //dd($proyectos->toSql());
        $sidebar = $this->sidebar;
        return view('planificacion.siseftran.planinstitucional.proyectos.components.proyecto',compact('proyecto','sidebar'));
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
