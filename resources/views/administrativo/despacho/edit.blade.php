@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span class="fa fa-list-alt"></span><span> Actualizar Solicitudes</span>
</header>
@include('administrativo.autorizaciones.solicitudes.partials._hojaderuta')
@include('administrativo.autorizaciones.solicitudes.partials._enviar')
<div class="panel-body">
    {!! Form::model($solicitud, array('id' => 'frmSolicitud', 'url' => array('autorizaciones/solicitudes/update',$solicitud), 'method' => 'PUT', 'role' =>'form')) !!}
        @if($solicitud_historico->estado == '4' && !empty($solicitud_historico->nota))
            <div class="alert alert-warning">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <i class="fa fa-ban-circle"></i><strong>Nota enviada de {{ $solicitud_historico->emisor->getFullNameAttribute() }}:</strong> {{ $solicitud_historico->nota }}
            </div>
        @endif
        @include('administrativo.autorizaciones.solicitudes.partials._fields')
        <footer class="panel-footer bg-light lter">
        <a class="btn btn-default" data-toggle="modal" data-target="#hojaderuta"><span class="fa fa-road"></span> Hoja de Ruta</a>
        <a href="{{ url('autorizaciones/solicitudes/pdf', $solicitud->id) }}" title='Vista Previa de Solicitud' class='btn btn-default'><span class='fa fa-eye'></span> Previsualizar PDF</a>
        
        <div class="btn-actions">
            <a class="btn btn-info" data-toggle="modal" data-target="#enviar"><span class="fa fa-location-arrow"></span> Enviar Solicitud</a>
        	<button type="submit" class="btn btn-success"><span class="fa fa-save"></span> Guardar Cambios</button>
        	<a class="btn btn-default" href="{{ url('autorizaciones/solicitudes') }}"><span class="fa fa-share-square"></span> Cerrar</a>	
        </div>
        </footer>
    {!! Form::close() !!}
</div>
@stop
@push('script')
<script type="text/javascript">
    $(document).ready(function() {
        $('#nombre').val('{{ \Auth::user()->name .' '. \Auth::user()->lastname }}');
    });

    function generatePdf(id) {
        //console.log(id);
        $.ajax({
            headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url: "{!! url('autorizaciones/solicitudes/pdf') !!}",
            type:'POST',
            data: {
              id: id,
              _token: $('input[name=_token').val()
            },
            success: function(resp) {
                //var w = window.open();
                //$(w.document.body).html(resp);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
            }
        });
    }
</script>
@endpush