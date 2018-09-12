<?php

namespace Sinapptic\Http\Controllers\Rrhh;

use Illuminate\Http\Request;
use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;
use Sinapptic\asistencias;
use Yajra\Datatables\Datatables;
use Carbon\Carbon;

class BiometricoController extends Controller
{
    private $breadcumb;
    private $sidebar;

    public function __construct(Request $request)
    {
        Carbon::setLocale('es');
        $this->breadcumb = '<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
            <li><a href="index.html"><i class="fa fa-home"></i> Inicio</a></li>
            <li><a href="applist"> Aplicaciones</a></li>
            <li><a>'.$request->segment(1).'</a></li>
            <li class="active"><a>'.$request->segment(2).'</a></li>
        </ul>';
        $objPanel = \DB::table('panel_opciones')
            ->select('panel_opciones.id as panel_opcion_id','panel_opciones.name as panel_opcion','panel_opciones.icon')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->where('aplicativos.url',$request->segment(1))
            ->orderBy('panel_opciones.order')
            ->get();

        $this->sidebar = '
        <li class="active"><a href="'. url($request->segment(1)) .'" class="active"><i class="fa fa-home icon">
              <b class="bg-info"></b>
            </i>
            <span>Workset</span>
          </a>
        </li>';

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

    public function index()
    {
        return view('administrativo.biometrico.index',
            [
                'breadcumb' => $this->breadcumb,
                'sidebar'=> $this->sidebar
            ]
        );
    }

    public function table()
    {
        $asistencias = asistencias::select('id','numca','empleado','dia','fecha','regentrada','regsalida', \DB::raw('date_add(timediff(regsalida, regentrada), INTERVAL -1 HOUR) as trabajado'), 'ausente');
        return Datatables::of($asistencias)
            ->removeColumn('id')
            ->setRowId('id')
            ->make(true);
    }

    function calcSalida($hora_i)
    {
        return date('H:i:s', strtotime($hora_i) + 30600); 
    }

    public function get(Request $request)
    {

        $asistencias = \DB::table('asistencias')
            //->where('asistencias.numca',$request->numca)
            //->where('asistencias.fecha',$request->fecha)
            ->get();
        return view('administrativo.asistencia.biometrico._table',compact('asistencias'));
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
