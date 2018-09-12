<?php

namespace Sinapptic\Http\Controllers\Blog;

use Sinapptic\departamentos;
use Sinapptic\blog_posts;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

use Yajra\Datatables\Datatables;

class PostController extends Controller
{
    var $sidebar = '';

    public function __construct(Request $request)
    {
        $objPanel = \DB::table('panel_opciones')
            ->select('panel_opciones.id as panel_opcion_id','panel_opciones.name as panel_opcion','panel_opciones.icon')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->where('aplicativos.url',$request->segment(1))
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

    public function index()
    {
        $sidebar = $this->sidebar;        
        return view('blog.index', compact('sidebar'));
    }

    public function dtable()
    {
        $regs = \DB::table('blog_posts')
            ->select('blog_posts.id as id','title', 'departamentos.name as departamento', 'status', 'blog_posts.created_at')
            ->join('departamentos','blog_posts.departamento_id','=','departamentos.id');
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

        return view('blog.create', compact('objDepartamentos','sidebar'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        blog_posts::create([
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
        return redirect('/blog')->with('messaje','store');
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
