<div id="enviar" class="modal fade" aria-labelledby="enviar">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Enviar Solicitud</h4>
            </div>
            {!! Form::open(array('id' => 'frmEnviar', 'url' => 'autorizaciones/solicitudes/enviar', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data')) !!}
            <div class="modal-body">
                <div class="form-group">
                    {!! Form::hidden('solicitud_id',null, array('id' => 'solicitud_id')) !!}
                    {!! Form::hidden('emisor_id',null, array('id' => 'emisor_id')) !!}
                    {!! Form::hidden('estado',null, array('id' => 'estado')) !!}
                    @if(\Auth::User()->cargo->nivel <= 2)
                        {!! Form::hidden('receptor_id',\Auth::User()->getSuperior()->id, array('id' => 'receptor_id')) !!}
                        {!! Form::label('receptor_id', 'Receptor') !!}
                        {!! Form::text('receptor_name', \Auth::User()->getSuperior()->name . ' ' . \Auth::User()->getSuperior()->lastname , array('class' => 'form-control', 'readonly')) !!}
                    @else
                        {!! Form::text('receptor_id',\Auth::User()->getDirectorEjecutivo()->id , array('id' => 'receptor_id')) !!}
                        {!! Form::label('receptor_id', 'Receptor') !!}
                        {!! Form::text('receptor_name', \Auth::User()->getDirectorEjecutivo()->name . ' ' . \Auth::User()->getDirectorEjecutivo()->lastname , array('class' => 'form-control', 'readonly')) !!}
                    @endif
                  </div>
                  <div class="form-group">
                    {!! Form::label('nota', 'Nota') !!}
                    {!! Form::textarea('nota', null, array('class' => 'form-control')) !!}
                  </div>
                  <div id="advertencia" class="alert alert-danger hide">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-ban-circle"></i><strong>Advertencia!</strong> Usted no ha ingresado una hoja de ruta.
                  </div>
            </div>
            <div class="modal-footer">
                <button id="send" type="submit" class="btn btn-info"><span class="fa fa-location-arrow"></span> Enviar</button>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
            {!! Form::close() !!}
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
@push('script')
<script type="text/javascript">
    function countTransporte() {
        $.ajax({
          headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
          url: "{!! url('autorizaciones/solicitudes/count-transporte') !!}",
          type: 'GET',
          data: {
            id: $('#frmSolicitud').find("#id").val()
          },
          success: function(data) {
            if(data[0]['cantidad'] == 0) {
                $('#advertencia').removeClass('hide');
                $('#frmEnviar').find(':submit').addClass('disabled');
            } else {
              $('#advertencia').addClass('hide');
              $('#frmEnviar').find(':submit').removeClass('disabled');
            }
          },
          error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status);
            console.log(thrownError);
          }
        });
    }
  $("#enviar").on('show.bs.modal', function(event) {
    $('#frmEnviar').find('#solicitud_id').val($('#frmSolicitud').find("#id").val());
    $('#frmEnviar').find('#emisor_id').val($('#frmSolicitud').find("#user_id").val());
    $('#estado').val(2);
    countTransporte();

  });

  $("#send").click(function(event) {
    $.ajax({
          headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
          url: "{!! url('reportesol') !!}",
          type: 'GET',
          data: {
            id: $('#frmSolicitud').find("#id").val()
          },
          success: function(data) {
            window.open(data,'_blank');
            $('#frmSolicitud').submit();
          },
          error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status);
            console.log(thrownError);
          }
        });
  });
  
</script>
@endpush