<?php

namespace Sinapptic\Http\Controllers\Core;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;
use Sinapptic\asistencias_historico_cargas;
use Yajra\Datatables\Datatables;
class CargaBiometricoController extends Controller
{
    
    public function getFile()
    {
        // Import a user provided file
        $file = Input::file('report');
        dd($file);
        //$filename = $this->doSomethingLikeUpload($file);

        // Return it's location
        //return $filename;
    }

    

    public function postImport()
    {
        Input::file('file')->move('asistencias', Input::file('file')->getClientOriginalName());

        $result = Excel::load('asistencias/'.Input::file('file')->getClientOriginalName(), function($reader) {
            $reader->select(array('numca','empleado','dia','fecha','regentrada','regsalida','ausente'));
            $reader->each(function($sheet){
                asistencias::create($sheet->toArray());
            });
        });

        //return redirect('/laboral/carga')->with('messaje','store');
        dd($result);
    }

    public function getIndex()
    {
        return view('core.cargabiometrico.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCreate()
    {
        return view('core.cargabiometrico.create');
    }

    public function getTable()
    {
        $biometrico = asistencias_historico_cargas::all();
        return Datatables::of($biometrico)
            ->removeColumn('id')
            ->setRowId('id')
            ->make(true);
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
