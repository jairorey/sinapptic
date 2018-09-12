<?php

namespace Sinapptic\Http\Controllers\Rrhh;

use Illuminate\Http\Request;

use Sinapptic\asistencias;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;
use Carbon\Carbon;

class LaboralController extends Controller
{
    private $breadcumb;
    private $sidebar;

    public function __construct(Request $request)
    {
        Carbon::setlocale('es');
        $this->breadcumb = '<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
            <li><a href="index.html"><i class="fa fa-home"></i> Inicio</a></li>
            <li><a href="applist"> Aplicaciones</a></li>
            <li><a>'.$request->segment(1).'</a></li>
            <li class="active"><a>'.$request->segment(2).'</a></li>
        </ul>';

        $objPanel = \DB::table('panel_opciones')
            ->select('panel_opciones.id as panel_opcion_id','panel_opciones.name as panel_opcion','panel_opciones.url','panel_opciones.icon')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->where('aplicativos.url',$request->segment(1))
            ->orderBy('panel_opciones.order')
            ->get();

        // Boton tablero de Ayuda e Informacion del modulo (opcional)
        $this->sidebar = '
        <li><a href="'. url($request->segment(1)) .'"><i class="fa fa-home icon">
              <b class="bg-info"></b>
            </i>
            <span>Workset</span>
          </a>
        </li>';
        // fin boton opcional

        foreach($objPanel as $panel) :
            $this->sidebar .= '<li';
            if($panel->url == $request->segment(2)) {
                $this->sidebar .= ' class="active" ><a class="active" ';
            } else {
                $this->sidebar .= '><a';
            }
            $this->sidebar .= ' href="#'.$panel->panel_opcion.'"><i class="'.$panel->icon.' icon">
                <b class="bg-success"></b>
                </i>
                <span class="pull-right">
                  <i class="fa fa-angle-down text"></i>
                  <i class="fa fa-angle-up text-active"></i>
                </span>
                <span>'.$panel->panel_opcion.'</span>
                </a>
                <ul class="nav lt">';
            $objOpciones = \DB::table('opciones')
                ->select('opciones.id as opcion_id','opciones.name as opcion','opciones.url as url')
                ->join('panel_opciones','opciones.panel_opcion_id','=','panel_opciones.id')
                ->where('panel_opciones.id',$panel->panel_opcion_id)
                ->orderBy('opciones.order')
                ->get();
            foreach ($objOpciones as $opcion) :
                $this->sidebar .= '<li';
                if($opcion->url == $request->segment(2)) {
                    $this->sidebar .= ' class="active" ><a class="active" ';
                } else {
                    $this->sidebar .= '><a';
                }
                $this->sidebar .= " href='".url($opcion->url)."'>
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
        return view('administrativo.metrica.index',
            [
                'breadcumb' => $this->breadcumb,
                'sidebar'   => $this->sidebar
            ]
        );
    }

    public function dtable()
    {
        $regs = \DB::table('metrica_posts')
            ->select('metrica_posts.id as id','title', 'departamentos.name as departamento', 'status', 'metrica_posts.created_at')
            ->join('departamentos','metrica_posts.departamento_id','=','departamentos.id');
        return Datatables::of($regs)
            ->removeColumn('id')
            ->setRowId('id')
            ->addColumn('action', function ($reg) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem' href='".route('core.users.edit', $reg->id)."'>Editar</a>
                    </li>
                </ul>
            </div>";
            })
            ->editColumn('status', function($reg) {
                if($reg->status == 0)
                    return "<span class='fa fa-circle text-default'></span>";
                else
                    return "<span class='fa fa-circle text-info'></span>";
            })
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $sidebar = $this->sidebar;

        $objDepartamentos = departamentos::lists('name','id');

        return view('metrica.create', compact('objDepartamentos','sidebar'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        metrica_posts::create([
            'departamento_id' => $request['departamento_id'],
            'title' => $request['title'],
            'subtitle' => $request['subtitle'],
            'content' => $request['content'],
            'image' => $request['image'],
            'type' => $request['type'],
            'status' => $request['status'],
            'order' => $request['order'],
            'url' => $request['url'],
            'source' => $request['source'],
            'url_source' => $request['url_source']
        ]);
        return redirect('/metrica')->with('messaje','store');
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