@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span class="fa fa-list-alt"></span><span> Creación de Solicitudes</span>
</header>
@include('administrativo.autorizaciones.solicitudes.partials._hojaderuta')
<div class="panel-body">
    {!! Form::open(array('url' => 'autorizaciones/solicitudes/store', 'method' => 'POST', 'role' =>'form')) !!}
        @include('administrativo.autorizaciones.solicitudes.partials._fields')
        <footer class="panel-footer bg-light lter">
        
        <div class="btn-actions">
        	<button type="submit" class="btn btn-success"><span class="fa fa-save"></span> Guardar</button>
        	<a class="btn btn-default" href="{{ url('autorizaciones/solicitudes') }}">Cerrar</a>	
        </div>
        </footer>
    {!! Form::close() !!}
</div>
@stop
@push('script')
<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url: "{{ url('autorizaciones/solicitudes/nro-solicitud') }}",
            type: 'GET',
            dataType:'json',
            success: function(resp) {
                $('#numero_solicitud').val(resp.dpto + '-' + 'SOL' + '-' + resp.iniciales + '-' + resp.nroSol);
                console.log(resp);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
            }
        });

        $('#filename').val('sol_'+Date.now());
        $('#user_id').val('{{ \Auth::user()->id }}');
        $('#nombre').val('{{ \Auth::user()->name.' '.\Auth::user()->lastname }}');
        $('#emisor_id').val('{{ \Auth::user()->id }}');
        $('#receptor_id').val('{{ \Auth::user()->getSuperior()->id }}');
        $('#partida_id').val('{{ \Auth::user()->partida()->id }}');
        $('#estado').val(1);
        $('#tipo_solicitud').val('viaticos');
        $('#fecha_solicitud').val(moment().format('YYYY-MM-DD'));
        $('#fecha_salida').val(moment().format('YYYY-MM-DD'));
        $('#fecha_retorno').val(moment().format('YYYY-MM-DD'));
        $('#hora_salida').combodate('setValue','07:00');
        $('#hora_retorno').combodate('setValue','17:00');
        $('#ciudad_id').on('change', function() {
            if ($(this).find(':selected').val() == 25) {
              $('[name="ciudad_otro"]').removeClass('hidden');
            } else {
              $('[name="ciudad_otro"]').addClass('hidden');
            }
        });
        
    });


    
</script>
@endpush