@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span class="fa fa-list-alt"></span><span> Visualizar Solicitud Recibida</span>
</header>
@include('administrativo.autorizaciones.solicitudes.partials._hojaderuta')
@include('administrativo.autorizaciones.solicitudes.partials._aprobar')
@include('administrativo.autorizaciones.solicitudes.partials._rechazar')
<div class="panel-body">
    {!! Form::model($solicitud, array('id' => 'frmSolicitud', 'url' => array('autorizaciones/solicitudes/update',$solicitud), 'method' => 'PUT', 'role' =>'form')) !!}
        @include('administrativo.autorizaciones.solicitudes.partials._fields')
        <footer class="panel-footer bg-light lter">
        <a class="btn btn-default" data-toggle="modal" data-target="#hojaderuta"><span class="fa fa-road"></span> Hoja de Ruta</a>
        <!-- <a id="previsualizar" title='Vista Previa de Solicitud' class='btn btn-default'><span class='fa fa-eye'></span> Previsualizar PDF</a> -->
        <div class="btn-actions">
            <a class="btn btn-info" data-toggle="modal" data-target="#aprobar"><span class="fa fa-location-arrow"></span> Aprobar</a>
            <a class="btn btn-warning" data-toggle="modal" data-target="#rechazar"><span class="fa fa-location-arrow"></span> Rechazar</a>
        	<a class="btn btn-default" href="{{URL::previous() }}"><span class="fa fa-share-square"></span> Cerrar</a>	
        </div>
        </footer>
    {!! Form::close() !!}
</div>
@stop
@push('script')
<script type="text/javascript">
  $(document).ready(function() {
    $('#frmSolicitud input, #frmSolicitud textarea').prop('readonly', 'true');
    $('#frmSolicitud select').prop('disabled','true');
    $('#frmRuta input, #frmRuta textarea, #frmRuta select').prop('readonly', 'true');
    $('#frmRuta select').prop('disabled', 'true');
  });
</script>
@endpush