<?php

namespace Sinapptic\Http\Controllers\Core;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;


class AppListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objAccesos = \DB::table('accesos')
            ->select('aplicativos.id','aplicativos.name','aplicativos.url','aplicativos.icon')
            ->join('panel_opciones','accesos.panel_opcion_id','=','panel_opciones.id')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->join('grupos','accesos.grupo_id','=','grupos.id')
            ->join('grupos_users','grupos.id','=','grupos_users.grupo_id')
            ->join('users','grupos_users.user_id','=','users.id')
            ->where('users.id','=', \Auth::User()->id )
            ->where('accesos.active','=',1)
            ->groupBy('aplicativos.id')
            ->get();
        //dd($objAccesos->toSql());
        return view('layouts.applist', compact('objAccesos'));
    }

    public function proyectos()
    {
        return view('layouts.applist2');
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
