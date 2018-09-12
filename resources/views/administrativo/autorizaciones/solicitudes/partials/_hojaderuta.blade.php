<div id="hojaderuta" class="modal fade" aria-labelledby="hojaderuta">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Rutas <small>Es necesario agregar tanto las rutas de ida como las rutas de regreso.</small></h4>
            </div>
            <div class="modal-body">
                {!! Form::open(array('url' => 'autorizaciones/solicitudes/store-ruta', 'method' => 'POST', 'role' =>'form', 'id' =>'frmRuta')) !!}
                  <div class="form-group pull-in clearfix">
                    <div class="col-sm-6">
                      {!! Form::hidden('solicitud_id',null, array('id' => 'solicitud_id')) !!}
                      {!! Form::label('tipo_transporte', 'Tipo de transporte') !!}
                      {!! Form::select('tipo_transporte', array('Terrestre'=>'Terrestre','Aereo'=>'Aereo'), null,  array('class' => 'form-control')) !!}
                    </div>
                    <div class="col-sm-6">
                      {!! Form::label('referencia', 'Nombre de Transporte') !!}
                      {!! Form::text('referencia', null, array('class' => 'form-control', 'placeholder' => 'Placa / Empresa Aerea')) !!}
                    </div>
                  </div>
                  <div class="form-group pull-in clearfix">
                    <div class="col-sm-5">
                      {!! Form::label('ciudad_origen_id', 'Origen') !!}
                      {!! Form::select('ciudad_origen_id', $objCiudades, null, array('class' => 'form-control'))!!}
                    </div>
                    <div class="col-sm-1">
                      <label>&nbsp;</label>
                      <button id="switch" type="button" class="btn btn-default btn-sm form-control" data-toggle="tooltip" data-placement="top" title="Intercambiar Ciudades"><span class="glyphicon glyphicon-transfer"></span></button>
                    </div>
                    <div class="col-sm-5">
                      {!! Form::label('ciudad_destino_id', 'Destino') !!}
                      {!! Form::select('ciudad_destino_id', $objCiudades, null, array('class' => 'form-control'))!!}
                    </div>
                  </div>
                  <div class="form-group pull-in clearfix">
                    <div class="col-sm-6">
                      {!! Form::text('ciudad_origen_otro', null, array('id' => 'ciudad_origen_otro','class' => 'form-control hidden', 'placeholder' => 'Especifique lugar de origen')) !!}
                    </div>
                    <div class="col-sm-6">
                      {!! Form::text('ciudad_destino_otro', null, array('id' => 'ciudad_destino_otro','class' => 'form-control hidden', 'placeholder' => 'Especifique lugar de destino')) !!}
                    </div>
                  </div>
                  <div class="form-group pull-in clearfix">
                    <div class="col-sm-3">
                      {!! Form::label('fecha_origen', 'Fecha Salida') !!}
                      {!! Form::text('fecha_origen', null, array('class' => 'form-control')) !!}
                    </div>
                    <div class="col-sm-3">
                      {!! Form::label('hora_origen', 'Hora Salida') !!}<br>
                      {!! Form::text('hora_origen', null, array('class' => 'form-control combodate', 'data-format' => 'HH:mm', 'data-template' => 'HH : mm')) !!}
                    </div>
                    <div class="col-sm-3">
                      {!! Form::label('fecha_destino', 'Fecha Llegada') !!}
                      {!! Form::text('fecha_destino', null, array('class' => 'form-control')) !!}
                    </div>
                    <div class="col-sm-3">
                      {!! Form::label('hora_destino', 'Hora Llegada') !!}<br>
                      {!! Form::text('hora_destino', null, array('class' => 'form-control combodate', 'data-format' => 'HH:mm', 'data-template' => 'HH : mm')) !!}
                    </div>
                  </div>
                {!! Form::close() !!}
                <hr />
                <div id="divRutas"></div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-info" id="btnAgregar"><span class="fa fa-plus"></span> Agregar</a>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
@push('script')
<script type="text/javascript">
  $(document).ready(function() {

        $('#fecha_origen').datepicker({
            format:'yyyy-mm-dd'
        }).on('changeDate', function(ev) {
            $('.datepicker').hide();
        });
        
        $('#fecha_destino').datepicker({
            format:'yyyy-mm-dd'
        }).on('changeDate', function(ev) {
            $('.datepicker').hide();
        });

        $('#fecha_origen').val($('#frmSolicitud').find('#fecha_salida').val());
        $('#fecha_destino').val($('#frmSolicitud').find('#fecha_salida').val());
        $('#hora_origen').combodate('setValue', $('#frmSolicitud').find('#hora_salida').val());
        $('#hora_destino').combodate('setValue','17:00');
        $("#ciudad_origen_id").val('{{ \Auth::user()->departamento->institucion->ciudad_id }}');
        $("#ciudad_destino_id").val($('#frmSolicitud').find('#ciudad_id').val());
    });

  $("#hojaderuta").on('show.bs.modal', function(e) {
    loadTableTransporte();
    $('#solicitud_id').val($('#id').val());
    
  });
  $('#ciudad_origen_id').on('change', function() {
    if ($(this).find(':selected').val() == 25) {
      $('[name="ciudad_origen_otro"]').removeClass('hidden');
    } else {
      $('[name="ciudad_origen_otro"]').addClass('hidden');
    }
  });
  $('#ciudad_destino_id').on('change', function() {
    if ($(this).find(':selected').val() == 25) {
      $('[name="ciudad_destino_otro"]').removeClass('hidden');
    } else {
      $('[name="ciudad_destino_otro"]').addClass('hidden');
    }
  });

  function delRuta() {
    $.ajax({
        headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        url: "{!! url('autorizaciones/solicitudes/destroy-ruta') !!}",
        type:'DELETE',
        data: {
          id: $('#id').val(),
          _token: $('input[name=_token').val()
        },
        success: function(resp) {
            //console.log(resp);
            loadTableTransporte();
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        }
      });
  }

  function loadTableTransporte() {
    $.ajax({
      headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
      url: "{!! url('autorizaciones/solicitudes/tbl-rutas') !!}",
      type: 'GET',
      data: {
        id: $('#id').val()
      },
      success: function(html){
        $('#divRutas').html(html);
      },
      error: function (xhr, ajaxOptions, thrownError) {
        console.log(xhr.status);
        console.log(thrownError);
      }
    });
  }
  
  $('#btnAgregar').on('click', function() {
    $.ajax({
      headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
      url: "{{ url('autorizaciones/solicitudes/store-ruta') }}",
      type: 'POST',
      data: $('#frmRuta').serialize(),
      dataType: 'JSON',
      success: function(resp){
        console.log(resp);
        loadTableTransporte();
      },
      error: function (xhr, ajaxOptions, thrownError) {
        console.log(xhr.status);
        console.log(thrownError);
      }
    });
  });
  $('#switch').on('click', function(event) {
    //event.preventDefault();
    var origen = $('#ciudad_origen_id').val();
    var origen_otro = $('[name="ciudad_origen_otro"]').val();
    $('#ciudad_origen_id').val($('#ciudad_destino_id').val());
    $('#ciudad_destino_id').val(origen);
    $('[name="ciudad_origen_otro"]').val($('[name="ciudad_destino_otro"]').val());
    $('[name="ciudad_destino_otro"]').val(origen_otro);
    if ($('#ciudad_origen_id').val() == 25) {
      $('[name="ciudad_origen_otro"]').removeClass('hidden');
    }else {
      $('[name="ciudad_origen_otro"]').addClass('hidden');
    }
    if ($('#ciudad_destino_id').val() == 25) {
      $('[name="ciudad_destino_otro"]').removeClass('hidden');
    } else {
      $('[name="ciudad_destino_otro"]').addClass('hidden');
    }
  });
</script>
@endpush