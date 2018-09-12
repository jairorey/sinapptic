<?php

namespace Sinapptic\Http\Controllers\Rrhh;

use Illuminate\Http\Request;
use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;
use Yajra\Datatables\Datatables;
use Auth;
use Sinapptic\aut_solicitudes;
use Sinapptic\aut_solicitudes_historicos;
use Sinapptic\ciudades;
use Sinapptic\partidas;
use Sinapptic\aut_solicitudes_transportes;
use Sinapptic\users;
use PDF;
use Zipper;

class DespachoController extends Controller
{

    public function getIndex()
    {
        return view('administrativo.despacho.index');
    }

    public function getDownloadAll()
    {
      //obtener Solicitudes por despachar
      $sol_hist = aut_solicitudes_historicos::select('aut_solicitudes_historicos.solicitud_id AS solicitud_id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno',\DB::raw('concat(emisor.name," ", emisor.lastname) AS emisor'),'emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname',
          'departamentos.name AS departamento', 'aut_solicitudes.filename')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes.user_id','LEFT')
          ->join('departamentos','emisor.departamento_id','=','departamentos.id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
           ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes_historicos.emisor_id', '=', \Auth::User()->getDirectorEjecutivo()->id)
          ->where('aut_solicitudes_historicos.estado', '=', 5);
      $name = 'sols_'.date("YmdHis").'.zip';
      $pathToFile = public_path('auth_files/zipper/'.$name);
      Zipper::make($pathToFile);
      foreach ($sol_hist->get() as $sol) {
        Zipper::add(glob(public_path('auth_files/files/'.$sol->filename.'.pdf')));
      }
      Zipper::close();
      return response()->download($pathToFile, $name);
    }

    public function getTblDespacho()
    {
        $sol_hist = aut_solicitudes_historicos::select('aut_solicitudes_historicos.solicitud_id AS solicitud_id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno',\DB::raw('concat(emisor.name," ", emisor.lastname) AS emisor'),'emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname',
          'departamentos.name AS departamento', 'aut_solicitudes.filename')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes.user_id','LEFT')
          ->join('departamentos','emisor.departamento_id','=','departamentos.id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
           ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes_historicos.emisor_id', '=', \Auth::User()->getDirectorEjecutivo()->id)
          ->where('aut_solicitudes_historicos.estado', '=', 5);
        
          return Datatables::of($sol_hist)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($sol) {
                return "<a href='".url('download-pdf', $sol->id)."' class='btn btn-default btn-xs' data-toggle='tooltip' data-placement='top' title='Descargar'>
                    <span class='fa fa-download'></span>
                </a>
                <a href='".url('download-pdf', $sol->id)."' class='btn btn-default btn-xs' data-toggle='tooltip' data-placement='top' title='Descargar'>
                    <span class='fa fa-upload'></span>
                </a>";
            })
            ->make(true);
    }

    public function getCreate()
    {
      return view('administrativo.despacho.create',
          [
              'objPartidas'      => partidas::lists('numero', 'id'),
              'objCiudades'      => ciudades::lists('name','id'),
              'user'             => Auth::user()
          ]
      );
    }


    public function postStore(Request $request)
    {
      //dd($request);
      \DB::beginTransaction();
        $newSol = aut_solicitudes::create([
            'tipo_solicitud'   => $request['tipo_solicitud'],
            'numero_solicitud' => $request['numero_solicitud'],
            'fecha_solicitud'  => $request['fecha_solicitud'],
            'partida_id'       => $request['partida_id'],
            'user_id'          => $request['user_id'],
            'ciudad_id'        => $request['ciudad_id'],
            'ciudad_otro'      => $request['ciudad_otro'],
            'fecha_salida'     => $request['fecha_salida'],
            'hora_salida'      => $request['hora_salida'],
            'fecha_retorno'    => $request['fecha_retorno'],
            'hora_retorno'     => $request['hora_retorno'],
            'integrantes'      => $request['integrantes'],
            'descripcion'      => $request['descripcion'],
            'filename'         => $request['filename']
        ]);

        $newHist = aut_solicitudes_historicos::create([
          'solicitud_id' => $newSol->id,
          'emisor_id'    => $request['user_id'],
          'receptor_id'  => $request['receptor_id'],
          'estado'       => $request['estado'],
          'nota'         => $request['nota']
        ]);

        if( !$newHist ) {
          \DB::rollBack();
          return redirect('autorizaciones/solicitudes')->with('messaje','error');
        } else {
          \DB::commit();
          $this->postPdf($newSol->id);
          return redirect(url('autorizaciones/solicitudes/edit',$newSol->id));
          //return redirect('/autorizaciones/solicitudes/edit')->with('messaje','store');
        }
    }

    public function postEnviar(Request $request)
    {
      $newHist = aut_solicitudes_historicos::create([
        'solicitud_id' => $request['solicitud_id'],
        'emisor_id'    => $request['emisor_id'],
        'receptor_id'  => $request['receptor_id'],
        'estado'       => $request['estado'],
        'nota'         => $request['nota']
      ]);

        //return redirect(route('autorizaciones.solicitudes.edit',$newSol->id));
        return redirect('/autorizaciones/solicitudes')->with('messaje','store');
        //return redirect('/autorizaciones/solicitudes/edit')->with('messaje','store');
    }

    public function postStoreRuta(Request $request) {
      if($request->ajax()) {
        $data = $request->all();
        $ruta = new aut_solicitudes_transportes($data);
        $ruta->save();
        return response()->json([
          'error' => false,
          'insertedData' => $data
        ]);
      }
    }

    public function deleteDestroyRuta(Request $request)
    {
      try {
        aut_solicitudes_transportes::where('solicitud_id','=',$request->id)->delete();
      } catch(Exception $e) {
        return $e;
      }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getShow($id)    {
        return view('administrativo.despacho.show',
          [
              'objPartidas'      => partidas::lists('numero', 'id'),
              'objCiudades'      => ciudades::lists('name','id'),
              'solicitud'        => aut_solicitudes::findOrFail($id)
          ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getEdit($id)
    {
        return view('administrativo.despacho.edit',
          [
              'objPartidas'         => partidas::lists('numero', 'id'),
              'objCiudades'         => ciudades::lists('name','id'),
              'solicitud'           => aut_solicitudes::findOrFail($id),
              'solicitud_historico' => aut_solicitudes_historicos::where('solicitud_id','=',$id)->orderBy('id','desc')->first()
          ]
      );
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
        $solicitud = aut_solicitudes::findOrFail($id);
        $solicitud->fill($request->all());
        //dd($solicitud);
        $solicitud->save();
        return redirect(url('autorizaciones/solicitudes/edit',$id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function postDestroy($id)
    {
        //
    }
}
