<?php

namespace Sinapptic\Http\Controllers\Core;

use Illuminate\Http\Request;

use Sinapptic\instituciones;
use Sinapptic\departamentos;
use Sinapptic\grupos;
use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

use Yajra\Datatables\Datatables;

class departamentosController extends Controller
{
    
    public function getIndex()
    { 
        return view('core.departamentos.index');
    }

    public function getTblDepartamentos()
    {
        $departamentos = \DB::table('departamentos')
            ->select('departamentos.id','departamentos.name','instituciones.name as institucion','departamentos.email','abbreviation')
            ->join('instituciones','departamentos.institucion_id','=','instituciones.id');
        return Datatables::of($departamentos)
            ->removeColumn('id')
            ->setRowId('id')
            ->addColumn('action', function ($departamento) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem' href='".route('core.departamentos.edit', $departamento->id)."'>Editar</a>
                    </li>
                </ul>
            </div>";
            })
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCreate()
    {
        $objInstituciones = instituciones::lists('name', 'id');
        return view('core.departamentos.create', compact('objInstituciones'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function postStore(Request $request)
    {
        departamentos::create([
            'name' => $request['name'],
            'institucion_id' => $request['institucion_id'],
            'email' => $request['email'],
            'abbreviation' => $request['abbreviation']
        ]);

        grupos::create([
            'name' => $request['name']
        ]);
        return redirect('/core/departamentos')->with('messaje','store');
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
    public function getEdit($id)
    {
        $objInstituciones = instituciones::lists('name','id');
        $departamento = departamentos::findOrFail($id);
        //dd($documento);
        return view('core.departamentos.edit', compact('departamento','objInstituciones'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function putUpdate(Request $request, $id)
    {
        $departamento = departamentos::findOrFail($id);
        $departamento->fill($request->all());
        //dd($departamento);
        $departamento->save();
        return redirect()->route('core.departamentos.index')->with('messaje','update');
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
