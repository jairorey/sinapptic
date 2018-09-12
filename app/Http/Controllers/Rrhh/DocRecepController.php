<?php

namespace Sinapptic\Http\Controllers\Rrhh;


use Illuminate\Http\Request;
use Sinapptic\Http\Requests;
use Sinapptic\users;
use Sinapptic\instituciones;
use Sinapptic\documentos_externos;
use Sinapptic\documentos_externos_asignados;
use Sinapptic\Http\Controllers\Controller;

class DocRecepController extends Controller
{

    public function index()
    {
        $documentos = \DB::table('documentos_externos')
            ->select('documentos_externos.id as doc_id','documentos_externos.*','instituciones.*')
            ->join('instituciones','documentos_externos.institucion_id','=','instituciones.id')
            ->get();
        //dd($documentos);
        $objUsers = array();
        $users = users::all();
        foreach( $users as $user) {
            $objUsers[$user->id] = $user->full_name;
        }
        return view('administrativo.docreceptor.index',compact('documentos','objUsers'));
    }

    public function create()
    {
        
        $objInstituciones = instituciones::lists('name', 'id');
        //dd($this->sidebar);
        return view('administrativo.docreceptor.create',compact('objInstituciones'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        documentos_externos::create([
            'institucion_id' => $request['institucion_id'],
            'referencia' => $request['referencia'],
            'name_remitente' => $request['name_remitente'],
            'user_id' => auth()->user()->id,
            'asunto' => $request['asunto'],
            'date_recibido' => $request['date_recibido'],
            'date_emitido' => $request['date_emitido'],
            'observacion' => $request['observacion'],
            'active' => '1'
        ]);
        //return redirect('/users')->with('messaje','store');
        return redirect()->route('docreceptor.index')->with('messaje','store');
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
        
        $objInstituciones = instituciones::lists('name', 'id');

        $documento = documentos_externos::findOrFail($id);
        //dd($documento);
        return view('administrativo.docreceptor.edit', compact('documento','objInstituciones'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function asignar($id, Request $request)
    {

        documentos_externos_asignados::create([
            'documento_externo_id' => $request['documento_externo_id'],
            'user_id' => $request['user_id']
        ]);

        if($request->ajax()) {
            return $id;
        }


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
        $documento = documentos_externos::findOrFail($id);
        $documento->fill($request->all());
        $documento->save();
        return redirect()->route('docreceptor.index')->with('messaje','update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        documentos_externos::destroy($id);
        return redirect()->route('docreceptor.index')->with('messaje','delete');
    }
}
