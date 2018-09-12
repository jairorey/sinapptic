@extends('layouts.master')
@section('content')
<section class="panel panel-default">
  <header class="panel-heading bg-info text-center lt no-border">
    <div class="row pull-out">
      <div class="col-sm-3">
        <div class="padder-v">
          <small class="text-muted">Solicitante</small>
          <span class="m-b-xs h3 block text-white">{{ $solicitud->usuario->name .' '. $solicitud->usuario->lastname }} </span>
        </div>
      </div>
      <div class="col-sm-3 dk">
        <div class="padder-v">
          <small class="text-muted">Solicitud #</small>
          <span class="m-b-xs h3 block text-white">{{ $solicitud->numero_solicitud }} </span>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="padder-v">
          <small class="text-muted">Fecha</small>
          <span class="m-b-xs h3 block text-white">{{ $solicitud->fecha_solicitud }} </span>
        </div>
      </div>
      <div class="col-sm-3 dk">
        <div class="padder-v">
          <small class="text-muted">Destino</small>
          <span class="m-b-xs h3 block text-white">{{ $solicitud->ciudad_id == 25 ? $solicitud->ciudad_otro : $solicitud->ciudad->name }} </span>
        </div>
      </div>
    </div>
  </header>
      
  <div class="panel-body">
    {!! Form::open(array('id' => 'frmAprobar', 'url' => 'autorizaciones/solicitudes/remitir', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data', 'class' =>'form-horizontal','files'=>true)) !!}
      {!! Form::hidden('solicitud_id', $solicitud->id, array('id' => 'solicitud_id')) !!}
      {!! Form::hidden('emisor_id', \Auth::user()->id , array('id' => 'emisor_id')) !!}
      {!! Form::hidden('receptor_id', $solicitud->user_id, array('id' => 'receptor_id')) !!}
      {!! Form::hidden('estado', 5, array('id' => 'estado')) !!}
      <div class="form-group">
        {!! Form::label('file', 'Documento Original', array('class' => 'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
          <a id="descargar" class='btn btn-sm btn-default' href="{{ url('autorizaciones/solicitudes/download', $solicitud->filename) }}" target='_blank'><i class='fa fa-download'></i> Descargar PDF</a>
        </div>
      </div>
      <div class="form-group">
        {!! Form::label('file', 'Documento Firmado', array('class' => 'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
          <div class="file-loading">
            <input id="file" name="file" type="file">
          </div>
        </div>
      </div>
      <div class="form-group">
        @if(\Auth::User()->cargo->nivel == 2)
            {!! Form::hidden('receptor_id',\Auth::User()->getDirectorEjecutivo()->id , array('id' => 'receptor_id')) !!}
            {!! Form::label('receptor_id', 'Receptor', array('class' => 'col-sm-2 control-label')) !!}
            <div class="col-sm-10">
            {!! Form::text('receptor_name', \Auth::User()->getDirectorEjecutivo()->name . ' ' . \Auth::User()->getDirectorEjecutivo()->lastname , array('class' => 'form-control', 'readonly')) !!}
            </div>
        @else
            {!! Form::hidden('receptor_id',$solicitud->user_id, array('id' => 'receptor_id')) !!}
            {!! Form::label('receptor_id', 'Receptor', array('class' => 'col-sm-2 control-label')) !!}
            <div class="col-sm-10">
            {!! Form::text('receptor_name', $solicitud->usuario->name . ' ' . $solicitud->usuario->lastname , array('class' => 'form-control', 'readonly')) !!}
            </div>
        @endif
      </div>
      <div class="form-group">
          {!! Form::label('nota', 'Nota', array('class' => 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
              {!! Form::textarea('nota', null, array('class' => 'form-control')) !!}
          </div>
      </div>
      <div class="line pull-in"></div>
      <div class="btn-actions">
        <button type="submit" class="btn btn-success"><span class="fa fa-save"></span> Confirmar</button>
        <a class="btn btn-default" href="{{ url('autorizaciones/solicitudes') }}"><span class="fa fa-share-square"></span> Cerrar</a> 
      </div>
    {!! Form::close() !!}
  </div>
</section>
@stop
@push('script')
<script type="text/javascript">
    $(document).ready(function() {
      $("#file").fileinput({
            language:'es',
            required: true,
            autoReplace: true,
            showRemove: true,
            showPreview: false,
            showUpload: false,
            msgFilerequired: true,
            showUploadedThumbs:false,
            elErrorContainer: '#kartik-file-errors',
            allowedFileExtensions: ["pdf"]
        });
    });
</script>
@endpush