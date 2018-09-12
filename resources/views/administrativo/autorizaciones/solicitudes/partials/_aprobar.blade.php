<div id="aprobar" class="modal fade" aria-labelledby="aprobar">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Aprobar Solicitud</h4>
            </div>
            {!! Form::open(array('id' => 'frmAprobar', 'url' => 'autorizaciones/solicitudes/enviar', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data')) !!}
            <div class="modal-body">
                  <div class="form-group">
                    {!! Form::hidden('solicitud_id',$solicitud->id, array('id' => 'solicitud_id')) !!}
                    {!! Form::hidden('emisor_id',\Auth::User()->id, array('id' => 'emisor_id')) !!}
                    @if(\Auth::User()->cargo_id != 4)
                        <!-- verifica si el user es director de area, escala como receptor el efecutivo -->
                        {!! Form::hidden('receptor_id',\Auth::User()->getDirectorEjecutivo()->id, array('id' => 'receptor_id')) !!}
                        {!! Form::label('receptor_id', 'Receptor') !!}
                        {!! Form::text('receptor_name', \Auth::User()->getDirectorEjecutivo()->name . ' ' . \Auth::User()->getDirectorEjecutivo()->lastname , array('class' => 'form-control', 'readonly')) !!}
                        {!! Form::hidden('estado',2, array('id' => 'estado')) !!}
                    @else
                        {!! Form::hidden('receptor_id',$solicitud->user_id, array('id' => 'receptor_id')) !!}
                        {!! Form::label('receptor_id', 'Receptor') !!}
                        {!! Form::text('receptor_name', $solicitud->usuario->name . ' ' . $solicitud->usuario->lastname , array('class' => 'form-control', 'readonly')) !!}
                        {!! Form::hidden('estado',3, array('id' => 'estado')) !!}
                    @endif
                  </div>
                  <div class="form-group">
                    {!! Form::label('nota', 'Nota') !!}
                    {!! Form::textarea('nota', null, array('class' => 'form-control')) !!}
                  </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-info"><span class="fa fa-location-arrow"></span> Aprobar</button>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
            {!! Form::close() !!}
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
@push('script')
<script type="text/javascript">
  $("#aprobar").on('show.bs.modal', function(event) {

    //$('#frmAprobar').find('#solicitud_id').val($('#frmSolicitud').find("#id").val());
    //$('#frmAprobar').find('#emisor_id').val($('#frmSolicitud').find("#user_id").val());
    //$('#estado').val(2);
    //console.log($("#solicitud_id").val());
  });
  
</script>
@endpush