<?php

namespace Sinapptic\Http\Controllers\Pdf;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

use PDF;
use Storage;
use Sinapptic\aut_solicitudes;
use Sinapptic\aut_solicitudes_transportes;

class PdfManagerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pdf = PDF::loadView('pdf.sample');
        return $pdf->download("dompdf_out.pdf");
    }

    public function previewPdfSol($id)
    {
        $aut_sol = aut_solicitudes::findOrFail($id);
        $aut_trans = aut_solicitudes_transportes::where('solicitud_id','=',$id)->get();
        $data = array(
        'numero_solicitud'   => $aut_sol->numero_solicitud,
        'fecha_solicitud'    => $aut_sol->fecha_solicitud,
        'partida'            => $aut_sol->partida->numero,
        'nombre'             => $aut_sol->usuario->name.' '.$aut_sol->usuario->lastname,
        'cargo'              => $aut_sol->usuario->cargo->name,
        'ciudad'             => $aut_sol->ciudad->name,
        'departamento'       => $aut_sol->usuario->departamento->name,
        'fecha_salida'       => $aut_sol->fecha_salida,
        'fecha_retorno'      => $aut_sol->fecha_retorno,
        'hora_salida'        => $aut_sol->hora_salida,
        'hora_retorno'       => $aut_sol->hora_retorno,
        'integrantes'        => $aut_sol->integrantes,
        'descripcion'        => $aut_sol->descripcion,
        'banco'              => $aut_sol->usuario->cuenta_bancaria->institucion->name,
        'numero_cuenta'      => $id,
        'tipo_cuenta'        => $aut_sol->usuario->cuenta_bancaria->tipo_cuenta,
        'aut_trans'          => $aut_trans,
        'superior_nombres'   => $aut_sol->usuario->getSuperior()->name,
        'superior_apellidos' => $aut_sol->usuario->getSuperior()->lastname
        );

        $pdf = PDF::loadView('pdf.solicitudPDF', ['data' => $data]);
        return $pdf->stream($aut_sol->filename.'.pdf', array("Attachment" => false));
    }

    public function savePdfSol($id)
    {
        $aut_sol = aut_solicitudes::findOrFail($id);
        $aut_trans = aut_solicitudes_transportes::where('solicitud_id','=',$id)->get();
        $data = array(
        'numero_solicitud'   => $aut_sol->numero_solicitud,
        'fecha_solicitud'    => $aut_sol->fecha_solicitud,
        'partida'            => $aut_sol->partida->numero,
        'nombre'             => $aut_sol->usuario->name.' '.$aut_sol->usuario->lastname,
        'cargo'              => $aut_sol->usuario->cargo->name,
        'ciudad'             => $aut_sol->ciudad->name,
        'departamento'       => $aut_sol->usuario->departamento->name,
        'fecha_salida'       => $aut_sol->fecha_salida,
        'fecha_retorno'      => $aut_sol->fecha_retorno,
        'hora_salida'        => $aut_sol->hora_salida,
        'hora_retorno'       => $aut_sol->hora_retorno,
        'integrantes'        => $aut_sol->integrantes,
        'descripcion'        => $aut_sol->descripcion,
        'banco'              => $aut_sol->usuario->cuenta_bancaria->institucion->name,
        'numero_cuenta'      => $id,
        'tipo_cuenta'        => $aut_sol->usuario->cuenta_bancaria->tipo_cuenta,
        'aut_trans'          => $aut_trans,
        'superior_nombres'   => $aut_sol->usuario->getSuperior()->name,
        'superior_apellidos' => $aut_sol->usuario->getSuperior()->lastname
        );

        $pdf = PDF::loadView('pdf.solicitudPDF', ['data' => $data]);
        return $pdf->save(storage_path('aut/sol/'.$aut_sol->filename.'.pdf'), array("Attachment" => false));
    }

    public function reporteSol($id)
    {
        $aut_sol = aut_solicitudes::findOrFail($id);
        $aut_trans = aut_solicitudes_transportes::where('solicitud_id','=',$id)->get();
        $data = array(
        'numero_solicitud'   => $aut_sol->numero_solicitud,
        'fecha_solicitud'    => $aut_sol->fecha_solicitud,
        'partida'            => $aut_sol->partida->numero,
        'nombre'             => $aut_sol->usuario->name.' '.$aut_sol->usuario->lastname,
        'cargo'              => $aut_sol->usuario->cargo->name,
        'ciudad'             => $aut_sol->ciudad->name,
        'departamento'       => $aut_sol->usuario->departamento->name,
        'fecha_salida'       => $aut_sol->fecha_salida,
        'fecha_retorno'      => $aut_sol->fecha_retorno,
        'hora_salida'        => $aut_sol->hora_salida,
        'hora_retorno'       => $aut_sol->hora_retorno,
        'integrantes'        => $aut_sol->integrantes,
        'descripcion'        => $aut_sol->descripcion,
        'banco'              => $aut_sol->usuario->cuenta_bancaria->institucion->name,
        'numero_cuenta'      => $id,
        'tipo_cuenta'        => $aut_sol->usuario->cuenta_bancaria->tipo_cuenta,
        'aut_trans'          => $aut_trans,
        'superior_nombres'   => $aut_sol->usuario->getSuperior()->name,
        'superior_apellidos' => $aut_sol->usuario->getSuperior()->lastname
        );

        $pdf = PDF::loadView('pdf.solicitudPDF', ['data' => $data]);
        return $pdf->download($aut_sol->filename.'.pdf');
    }

    public function verPdfSol($id)
    {
        $aut_sol = aut_solicitudes::findOrFail($id);
        $aut_trans = aut_solicitudes_transportes::where('solicitud_id','=',$id)->get();
        $data = array(
        'numero_solicitud'   => $aut_sol->numero_solicitud,
        'fecha_solicitud'    => $aut_sol->fecha_solicitud,
        'partida'            => $aut_sol->partida->numero,
        'nombre'             => $aut_sol->usuario->name.' '.$aut_sol->usuario->lastname,
        'cargo'              => $aut_sol->usuario->cargo->name,
        'ciudad'             => $aut_sol->ciudad->name,
        'departamento'       => $aut_sol->usuario->departamento->name,
        'fecha_salida'       => $aut_sol->fecha_salida,
        'fecha_retorno'      => $aut_sol->fecha_retorno,
        'hora_salida'        => $aut_sol->hora_salida,
        'hora_retorno'       => $aut_sol->hora_retorno,
        'integrantes'        => $aut_sol->integrantes,
        'descripcion'        => $aut_sol->descripcion,
        'banco'              => $aut_sol->usuario->cuenta_bancaria->institucion->name,
        'numero_cuenta'      => $id,
        'tipo_cuenta'        => $aut_sol->usuario->cuenta_bancaria->tipo_cuenta,
        'aut_trans'          => $aut_trans,
        'superior_nombres'   => $aut_sol->usuario->getSuperior()->name,
        'superior_apellidos' => $aut_sol->usuario->getSuperior()->lastname
        );

        $pdf = PDF::loadView('pdf.solicitudPDF', ['data' => $data]);
        return $pdf->stream($aut_sol->filename.'.pdf', array("Attachment" => false));
    }

    public function downloadPdfSol($id)
    {
        $aut_sol = aut_solicitudes::findOrFail($id);
        $aut_trans = aut_solicitudes_transportes::where('solicitud_id','=',$id)->get();
        $data = array(
        'numero_solicitud'   => $aut_sol->numero_solicitud,
        'fecha_solicitud'    => $aut_sol->fecha_solicitud,
        'partida'            => $aut_sol->partida->numero,
        'nombre'             => $aut_sol->usuario->name.' '.$aut_sol->usuario->lastname,
        'cargo'              => $aut_sol->usuario->cargo->name,
        'ciudad'             => $aut_sol->ciudad->name,
        'departamento'       => $aut_sol->usuario->departamento->name,
        'fecha_salida'       => $aut_sol->fecha_salida,
        'fecha_retorno'      => $aut_sol->fecha_retorno,
        'hora_salida'        => $aut_sol->hora_salida,
        'hora_retorno'       => $aut_sol->hora_retorno,
        'integrantes'        => $aut_sol->integrantes,
        'descripcion'        => $aut_sol->descripcion,
        'banco'              => $aut_sol->usuario->cuenta_bancaria->institucion->name,
        'numero_cuenta'      => $id,
        'tipo_cuenta'        => $aut_sol->usuario->cuenta_bancaria->tipo_cuenta,
        'aut_trans'          => $aut_trans,
        'superior_nombres'   => $aut_sol->usuario->getSuperior()->name,
        'superior_apellidos' => $aut_sol->usuario->getSuperior()->lastname
        );

        $pdf = PDF::loadView('pdf.solicitudPDF', ['data' => $data]);
        return $pdf->download($aut_sol->filename.'.pdf');
    }

    public function uploadPdfSol(Request $request)
    {
        if($request->hasFile('file')) {
            $file = $request->file('file');
            $filename = $file->getClientOriginalName();
            $uploaded = Storage::disk('aut_sol')->put($filename, file_get_contents($request->file('file')->getRealPath()));
            return $request->file('file');
        }
        
    }

    public function loadPDF($id)
    {
        $aut_sol = aut_solicitudes::findOrFail($id);
        //$extension = $request->file('filename')->getClientOriginalExtension();
        //$filename = $request->book_name.'.'. $extension;
        //$request->file('file')->move(public_path().'/auth_files/', $aut_sol->filename);
        $fullPath = public_path().'/auth_files/files/'.$aut_sol->filename.'.pdf';
        
        if (\File::isFile($fullPath)) {
            $file = \File::get($fullPath);
            $response = \Response::make($file, 200);
            $response->header('Content-Type', 'application/pdf');
            return $response;
        } else {
          return 'No se encontro el documento de respaldo, PATH: '.$fullPath;
        }
    }


    public function HtmlToPDF()
    {    
        $view = \View::make('HtmlToPDF');
        $html_content = $view->render();
      

        PDF::SetTitle('Sample PDF');
        PDF::AddPage();
        PDF::writeHTML($html_content, true, false, true, false, '');

        PDF::Output(uniqid().'_SamplePDF.pdf');
    }
}
