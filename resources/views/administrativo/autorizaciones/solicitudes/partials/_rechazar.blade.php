<div id="rechazar" class="modal fade" aria-labelledby="rechazar">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Rechazar Solicitud</h4>
            </div>
            {!! Form::open(array('id' => 'frmRechazar', 'url' => 'autorizaciones/solicitudes/enviar', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data')) !!}
            <div class="modal-body">
                  <div class="form-group">
                    {!! Form::hidden('solicitud_id',$solicitud->id, array('id' => 'solicitud_id')) !!}
                    {!! Form::hidden('emisor_id',\Auth::User()->id, array('id' => 'emisor_id')) !!}
                    {!! Form::hidden('estado',4, array('id' => 'estado')) !!}
                    {!! Form::hidden('receptor_id',$solicitud->user_id, array('id' => 'receptor_id')) !!}
                    {!! Form::label('receptor_id', 'Receptor') !!}
                    {!! Form::text('receptor_name', $solicitud->usuario->name . ' ' . $solicitud->usuario->lastname , array('class' => 'form-control', 'readonly')) !!}            
                  </div>
                  <div class="form-group">
                    {!! Form::label('nota', 'Nota') !!}
                    {!! Form::textarea('nota', null, array('class' => 'form-control')) !!}
                  </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-warning"><span class="fa fa-location-arrow"></span> Rechazar</button>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
            {!! Form::close() !!}
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
@push('script')
<script type="text/javascript">
  $("#rechazar").on('show.bs.modal', function(event) {

    //$('#frmRechazar').find('#solicitud_id').val($('#frmSolicitud').find("#id").val());
    //$('#frmRechazar').find('#emisor_id').val($('#frmSolicitud').find("#user_id").val());
    $('#estado').val(1);
    //console.log($("#solicitud_id").val());
  });
  
</script>
@endpush