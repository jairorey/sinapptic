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
use Sinapptic\Http\Controllers\Pdf\PdfManagerController;
use PDF;

class SolicitudesController extends Controller
{

    public function getIndex()
    {
        return view('administrativo.autorizaciones.solicitudes.index');
    }

    public function getRecibido()
    {
        return view('administrativo.autorizaciones.solicitudes.recibido');
    }

    public function getNroSolicitud() {
      $data = [
        'nroSol' => aut_solicitudes::where('user_id','=',\Auth::User()->id)->max('id') + 1,
        'dpto' => \Auth::User()->departamento->abbreviation,
        'iniciales' => \Auth::User()->iniciales
      ];
      echo json_encode($data);
    }

    // TABLA ESTADOS:
    // 1: Elaboración
    // 2: Enviado
    // 3: Archivado
    // 4: Repobado
    // 5: Aprobado

    public function getTblElaboracion()
    {
        $elab = aut_solicitudes_historicos::select('aut_solicitudes.id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno','emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname', 'aut_solicitudes_historicos.estado AS estado')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes_historicos.emisor_id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
          ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes.user_id', '=', \Auth::User()->id) //\Auth::User()->name
          ->whereIn('aut_solicitudes_historicos.estado', [1,4])
          ->orderBy('aut_solicitudes_historicos.updated_at','desc');
          //->toSql();
          //dd($elab);
        return Datatables::of($elab)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($solicitud) {
                return "
                <button class='btn btn-default btn-xs dropdown-toggle' type='button' data-toggle='dropdown'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated fadeIn'>
                    <li>
                        <a href='".url('autorizaciones/solicitudes/edit',$solicitud->id)."'><i class='fa fa-edit'></i> Detalle</a>
                    </li>
                    <li>
                        <a href='".url('autorizaciones/solicitudes/archivar',$solicitud->id)."'><i class='fa fa-trash-o icon'></i> Archivar</a>
                    </li>
                </ul>";
            })
            ->editColumn('estado', function($solicitud) {
                if($solicitud->estado == 1)
                    return "<span class='label bg-light'>En edición</span>";
                else
                    return "<span class='label bg-warning'>Devuelto</span>";
            })
            ->make(true);
    }

    public function getTblEnviado()
    {
        $env = aut_solicitudes_historicos::select('aut_solicitudes.id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno','emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes_historicos.emisor_id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
           ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes.user_id', '=', \Auth::User()->id)
          ->where('aut_solicitudes_historicos.estado', '=', 2);
        return Datatables::of($env)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($solicitud) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-default btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                      <a role='menuitem' href='".url('verpdfsol', $solicitud->id)."' target='_blank'><i class='fa fa-share-square-o'></i> Ver Documento PDF</a>
                      <a role='menuitem' href='".url('downloadpdfsol', $solicitud->id)."'><i class='fa fa-download'></i> Descargar PDF</a>
                    </li>
                </ul>
            </div>";
            })
            ->make(true);
    }

    public function getTblAprobado()
    {
        $apr = aut_solicitudes_historicos::select('aut_solicitudes.id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno','emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes_historicos.emisor_id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
           ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes.user_id', '=', \Auth::User()->id) //\Auth::User()->name
          ->where('aut_solicitudes_historicos.estado', '=', 5);
        return Datatables::of($apr)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($solicitud) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-default btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem' href='".url('downloadpdfsol', $solicitud->id)."'><i class='fa fa-download'></i> Descargar Aprobado</a>
                    </li>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem' href='".url('downloadpdfsol', $solicitud->id)."'><i class='fa fa-trash-o'></i> Archivar</a>
                    </li>
                </ul>
            </div>";
            })
            ->make(true);
    }

    public function getTblArchivado()
    {
        $arc = aut_solicitudes_historicos::select('aut_solicitudes.id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno','emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes_historicos.emisor_id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
           ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes.user_id', '=', \Auth::User()->id)
          ->where('aut_solicitudes_historicos.estado', '=', 3);
        return Datatables::of($arc)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($user) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-default btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem' href='".url('downloadpdfsol', $solicitud->id)."'><i class='fa fa-download'></i> Descargar Copia</a>
                    </li>
                </ul>
            </div>";
            })
            ->make(true);
    }

    public function getTblRecibido()
    {
        $sol_hist = aut_solicitudes_historicos::select('aut_solicitudes_historicos.solicitud_id AS solicitud_id','emisor.id AS emisor_id','aut_solicitudes.numero_solicitud AS numero_solicitud','aut_solicitudes_historicos.created_at AS fecha','ciudades.name AS ciudad','aut_solicitudes.fecha_salida AS fecha_salida','aut_solicitudes.hora_salida AS hora_salida','aut_solicitudes.fecha_retorno AS fecha_retorno','aut_solicitudes.hora_retorno AS hora_retorno',\DB::raw('concat(emisor.name," ", emisor.lastname) AS emisor'),'emisor.name AS emisor_name','emisor.lastname AS emisor_lastname','receptor.id AS id_receptor','receptor.name AS receptor_name','receptor.lastname AS receptor_lastname',
          'departamentos.name AS departamento', 'aut_solicitudes.filename')
          ->join('aut_solicitudes','aut_solicitudes.id','=','aut_solicitudes_historicos.solicitud_id')
          ->join('ciudades', 'ciudades.id','=','aut_solicitudes.ciudad_id')
          ->join('users AS emisor','emisor.id','=','aut_solicitudes.user_id','LEFT')
          ->join('departamentos','emisor.departamento_id','=','departamentos.id','LEFT')
          ->join('users AS receptor','receptor.id','=','aut_solicitudes_historicos.receptor_id','LEFT')
           ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b where b.solicitud_id = aut_solicitudes_historicos.solicitud_id)'))
          ->where('aut_solicitudes_historicos.receptor_id', '=', \Auth::User()->id)
          ->where('aut_solicitudes_historicos.estado', '=', 2);
        //Verificar tipo de usuario que recibe(Director Area / Director Ejecutivo)
        if( \Auth::User()->cargo_id != 4 ) {
          return Datatables::of($sol_hist)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($sol) {
                return "<div>
                <button id='dd1' class='btn btn-default btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated'>
                    <li><a href='".url('autorizaciones/solicitudes/show', $sol->solicitud_id)."'><i class='fa fa-list'></i> Ver Detalle...</a></li>
                    <li><a href='".url('autorizaciones/solicitudes/remitir', $sol->solicitud_id)."'><i class='fa fa-location-arrow'></i> Responder</a></li>
                    <li><a href='".url('previewpdfsol', $sol->solicitud_id)."' target='_blank'><i class='fa fa-share-square-o'></i> Ver en PDF...</a></li>
                    <li><a href='".url('downloadpdfsol', $sol->solicitud_id)."' target='_blank'><i class='fa fa-download'></i> Descargar PDF...</a></li>
                </ul>
            </div>";
            })
            ->make(true);
        } else {
          return Datatables::of($sol_hist)
            ->setRowId('emisor_id')
            ->addColumn('action', function ($sol) {
                return '
                <a title="Ver Solicitud" class="btn btn-default btn-xs dropdown-toggle" href="'.url("autorizaciones/solicitudes/show", $sol->solicitud_id).'"><span class="fa fa-th-list"></span></a>
                <a title="Descargar Copia" class="btn btn-xs btn-default" onclick="'.url("autorizaciones/solicitudes/show", $sol->solicitud_id).'"><span class="fa fa-download"></span></a>
                <div id="grupo-confirm" class="btn-group" data-toggle="buttons">
                <label class="btn btn-xs btn-default active">
                  <input type="radio" name="options" id="aprobar"><i class="fa fa-check text-active"></i> Aprobar
                </label>
                <label class="btn btn-xs btn-default">
                  <input type="radio" name="options" id="rechazar"><i class="fa fa-check text-active"></i> Rechazar
                </label>
                </div>
                <a title="Confirmar" class="btn btn-xs btn-success confirm" href="#" data-target="#divConfirmEjecutivo" data-id="'.$sol->solicitud_id.'" data-nsol="'.$sol->numero_solicitud.'" data-emisor-id="'.$sol->emisor_id.'" data-emisor-nombre="'.$sol->emisor.'" data-toggle="modal"><span class="fa fa-location-arrow"></span></a>
                    
                </button>';
            })
            ->make(true);
        }
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


    public function getDownload($filename)
    {
        // $file = File::get("../resources/logs/$id");
      if(\Storage::disk('aut_sol')->has($filename.'.pdf')){
        $path = storage_path('aut/sol/'.$filename.'.pdf');
        return response()->download($path, $filename.'.pdf', ['Content-Type' => 'application/pdf']);
      }
        
        #return Response::download($file, $id. '.' .$type, $headers); 
        //$contents = \Storage::disk('aut_sol')->get($filename.'.pdf');
        
        
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
      return view('administrativo.autorizaciones.solicitudes.create',
          [
              'objPartidas'      => partidas::lists('numero', 'id'),
              'objCiudades'      => ciudades::lists('name','id'),
              'user'             => Auth::user()
          ]
      );
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
            'filename'         => $request['numero_solicitud']
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
          $pdf = new PdfManagerController();
          $pdf->savePdfSol($newSol->id);
          return redirect(url('autorizaciones/solicitudes/edit',$newSol->id));
          //return redirect('/autorizaciones/solicitudes/edit')->with('messaje','store');
        }
    }

    public function postEnviar(Request $request)
    {
      \DB::beginTransaction();
      $newHist = aut_solicitudes_historicos::create([
        'solicitud_id' => $request['solicitud_id'],
        'emisor_id'    => $request['emisor_id'],
        'receptor_id'  => $request['receptor_id'],
        'estado'       => $request['estado'],
        'nota'         => $request['nota']
      ]);
      if( !$newHist ) {
          \DB::rollBack();
          if(in_array($request['estado'], array('4','5'))) {
            return redirect('autorizaciones/solicitudes/recibido')->with('messaje','error');
          } else {
            return redirect('autorizaciones/solicitudes')->with('messaje','error');
          }
        } else {
          \DB::commit();
          $pdf = new PdfManagerController();
          $pdf->reporteSol($request['solicitud_id']);
          if(in_array($request['estado'], array('4','5'))) {
            return redirect('/autorizaciones/solicitudes/recibido')->with('messaje','store');
          } else {
            return redirect('autorizaciones/solicitudes')->with('messaje','store');
          }
        }
    }

    public function postRemitir(Request $request)
    {
      \DB::beginTransaction();
      $newHist = aut_solicitudes_historicos::create([
        'solicitud_id' => $request['solicitud_id'],
        'emisor_id'    => $request['emisor_id'],
        'receptor_id'  => $request['receptor_id'],
        'estado'       => $request['estado'],
        'nota'         => $request['nota']
      ]);
      if($request->hasFile('file')) {
          $file = $request->file('file');
          $filename = $file->getClientOriginalName();
          $dbfile = aut_solicitudes::select('filename')->where('id',$request['solicitud_id'])->first();
          
          if (!\File::exists(storage_path('aut/sol/'.$dbfile['filename'].'.pdf'))) {
            \Storage::disk('aut_sol')->put($filename, \File::get($file));
            if($filename != $dbfile['filename'].'.pdf') {
              \Storage::disk('aut_sol')->move($filename,$dbfile['filename'].'.pdf');
            }
          } else {
            \File::delete(storage_path('aut/sol/'.$dbfile['filename'].'.pdf'));
            //\Storage::disk('aut_sol')->move($filename,$dbfile['filename'].'.pdf');
            \Storage::disk('aut_sol')->put($filename, \File::get($file));
          }
      }
      if( !$newHist ) {
          \DB::rollBack();
          if(in_array($request['estado'], array('4','5'))) {
            return redirect('autorizaciones/solicitudes/recibido')->with('messaje','error');
          } else {
            return redirect('autorizaciones/solicitudes')->with('messaje','error');
          }
        } else {
          \DB::commit();
          
          if(in_array($request['estado'], array('4','5'))) {
            return redirect('/autorizaciones/solicitudes/recibido')->with('messaje','store');
          } else {
            return redirect('autorizaciones/solicitudes')->with('messaje','store');
          }
        }
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

    public function getRemitir($id)
    {
      return view('administrativo.autorizaciones.solicitudes.remitir',
        [
          'solicitud' => aut_solicitudes::find($id)
        ]);
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

    public function putArchivar($id)
    {
        $solicitud = aut_solicitudes_historicos::findOrFail($id);
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
