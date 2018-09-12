<?php

namespace Sinapptic\Http\Controllers\Core;

use Illuminate\Http\Request;
use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;
use Sinapptic\aplicativos;
use Yajra\Datatables\Datatables;
use Auth;

class aplicativosController extends Controller
{

    public function getIndex()
    {

      return view('core.aplicativos.index')->with('aplicativos',aplicativos::all());
    }

    public function getRecibido()
    {
        return view('administrativo.autorizaciones.solicitudes.recibido');
    }


    public function postPdf() {
      //'partida'       => \Partidas::select('numero')->where('departamento_id','=',$request['partida_id']),
      
      $aut_sol = aut_solicitudes::findOrFail($request->id);
      $aut_trans = aut_solicitudes_transportes::where('solicitud_id','=',$request->id);
      $data = array(
      'numero_solicitud' => $aut_sol->numero_solicitud,
      'fecha_solicitud'  => $aut_sol->fecha_solicitud,
      'partida'          => $aut_sol->partida->numero,
      'nombre'           => $aut_sol->usuario->name.' '.$aut_sol->usuario->lastname,
      'cargo'            => $aut_sol->usuario->cargo->name,
      'ciudad'           => $aut_sol->ciudad->name,
      'departamento'     => $aut_sol->usuario->departamento->name,
      'fecha_salida'     => $aut_sol->fecha_salida,
      'fecha_retorno'    => $aut_sol->fecha_retorno,
      'hora_salida'      => $aut_sol->hora_salida,
      'hora_retorno'     => $aut_sol->hora_retorno,
      'integrantes'      => $aut_sol->integrantes,
      'descripcion'      => $aut_sol->descripcion,
      'banco'            => $aut_sol->usuario->cuenta_bancaria->institucion->name,
      'numero_cuenta'    => $request->id,
      'tipo_cuenta'      => $aut_sol->usuario->cuenta_bancaria->tipo_cuenta,
      'aut_trans'        => $aut_trans
      );

      //$filename = 'sol'.time();
      

      //$pdf = new PDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
      $data="<h1> test </h1>";
      PDF::AddPage();
      PDF::writeHTML($data, true, false, true, false, '');
      PDF::Output('sample.pdf');
      

      //return view('vistapdf', $data);
    }

    public function getNroSolicitud() {
      $data = [
        'nroSol' => aut_solicitudes::where('user_id','=',\Auth::User()->id)->max('id') + 1,
        'dpto' => \Auth::User()->departamento->abbreviation,
        'iniciales' => \Auth::User()->iniciales
      ];
      echo json_encode($data);
    }


    public function getTblRutas(Request $request)
    {
      if ($request->ajax()) {
        return view('administrativo.autorizaciones.solicitudes.partials._tblRutas',
            [
                'objRutas' => aut_solicitudes_transportes::where('solicitud_id','=',$request["id"])->get()
            ]
        );
      }
    }

    public function getCountTransporte(Request $request)
    {
      if ($request->ajax()) {
        return \DB::table('aut_solicitudes_transportes')
            ->select(\DB::RAW('count(*) as cantidad'))
            ->where('aut_solicitudes_transportes.solicitud_id', '=', $request['id'])
            ->get();
      }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCreate()
    {
      return view('core.aplicativos.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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
        return view('administrativo.autorizaciones.solicitudes.show',
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
        return view('administrativo.autorizaciones.solicitudes.edit',
          [
              'breadcumb'           => $this->breadcumb,
              'sidebar'             => $this->sidebar,
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
