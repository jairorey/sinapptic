<?php

namespace Sinapptic\Http\Controllers\Core;

use Illuminate\Http\Request;
use Illuminate\Http\Response;

use Sinapptic\Http\Requests;
use Sinapptic\grupos;
use Sinapptic\grupos_users;
use Sinapptic\instituciones;
use Sinapptic\Http\Controllers\Controller;

use Yajra\Datatables\Datatables;

class gruposController extends Controller
{
    
    public function getIndex()
    {
        $grupos = grupos::all();
        return view('core.grupos.index')->with('grupos', $grupos);
    }

    public function getGrupos()
    {
        $grupos = grupos::all();
        $grupos_users = grupos_users::all();
        return view('core.accesos.components.gruposaccesos',compact('grupos','grupos_users'));
    }

    public function getAjaxGrupos()
    {
        return grupos::all();
    }

    public function getAjaxGruposUsers()
    {
        //header('Content-Type: application/json');
        return grupos_users::all('grupo_id');
    }

    public function postAjaxGruposUsers($request)
    {
        if ($request->ajax()) {
            $grupos_users = grupos_users::findOrFail($request->input('id'));
            $grupos_users->active = (int)$request->input('active');
            $grupos_users->fill();
            //dd($grupos_users);
            $grupos_users->save();
            return 1;
        }
        
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCreate()
    {
        return view('core.grupos.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function postStore(Request $request)
    {
        grupos::create([
            'name' => $request['name']
        ]);
        return redirect('/core/grupos')->with('messaje','store');
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
        $grupo = grupos::findOrFail($id);
        //dd($documento);
        return view('core.grupos.edit', compact('grupo'));
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
        $grupo = grupos::findOrFail($id);
        $grupo->fill($request->all());
        //dd($grupo);
        $grupo->save();
        return redirect()->route('core.grupos.index')->with('messaje','update');
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
