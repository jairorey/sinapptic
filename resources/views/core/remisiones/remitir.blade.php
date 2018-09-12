@extends('layouts.master')
@section('content')
<section class="panel panel-default clearfix"> 
    <div class="wizard wizard-vertical clearfix" id="wizard-2">
      <ul class="steps">
        <li data-target="#step4" class="active"><span class="badge badge-info">1</span>Get it!</li>
        <li data-target="#step5"><span class="badge">2</span>Unzip it</li>
        <li data-target="#step6"><span class="badge">3</span>Finish</li>
      </ul>
    </div>
    <div class="step-content">
      <div class="step-pane active" id="step4">
        <p>You can get this theme at <a href="http://themeforest.net/user/Flatfull/portfolio"><strong>here</strong></a>
        <br><small class="text-muted">Do not forget to rate it when you get it.</small></p>
      </div>
      <div class="step-pane" id="step5">
        <p>Unzipping this file, please wait it complete...</p>
        <div class="progress progress-xs m-t-sm">                  
          <div class="progress-bar progress-bar-info" data-toggle="tooltip" data-original-title="40%" style="width: 40%"></div>
        </div>
        <p class="text-muted"><small>Some features you need know...</small></p>     
      </div>
      <div class="step-pane" id="step6">
        <p>Thank you for choose this theme for your web application. <br>Have Fun!</p>
      </div>
      <div class="actions m-t text-right">
        <button type="button" class="btn btn-default btn-sm btn-prev" data-target="#wizard-2" data-wizard="previous" disabled="disabled">Prev</button>
        <button type="button" class="btn btn-default btn-sm btn-next" data-target="#wizard-2" data-wizard="next" data-last="Finish">Next</button>
      </div>
    </div>
</section>
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