<div id="divConfirmEjecutivo" class="modal fade" aria-labelledby="divConfirmEjecutivo">
    <div class="modal-dialog">
        <div class="modal-content">
            {!! Form::open(array('id' => 'frmEjecutivo', 'url' => 'autorizaciones/solicitudes/enviar', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data')) !!}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Confirmación</h4>
            </div>
            <div class="modal-body">
                {!! Form::hidden('solicitud_id',null, array('id' => 'solicitud_id')) !!}
                {!! Form::hidden('emisor_id',\Auth::User()->id, array('id' => 'emisor_id')) !!}
                {!! Form::hidden('receptor_id',null, array('id' => 'receptor_id')) !!}
                {!! Form::hidden('estado',null, array('id' => 'estado')) !!}
                <p>Esta seguro que desea <span id='estado'></span> el documento <span id='solicitud'></span> de <span id='user'></span> ?</p>
                {!! Form::textarea('nota', null, array('class' => 'form-control','rows' => '2', 'placeholder' => 'Respuesta opcional...')) !!}
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btn-confirm"><span class="fa fa-location-arrow"></span> Aprobar</button>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
            {!! Form::close() !!}
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

@push('script')
<script>

$('#divConfirmEjecutivo').on('show.bs.modal', function(e){
    $('#divConfirmEjecutivo #estado').text($(e.relatedTarget).parent().find('.active').find('input').attr('id'));
    $('.btn-confirm').attr('id', $(e.relatedTarget).data('id'));
    $('#divConfirmEjecutivo #solicitud').text($(e.relatedTarget).data('nsol'));
    $('#divConfirmEjecutivo #user').text($(e.relatedTarget).data('nombre'));
    $('#frmEjecutivo #solicitud_id').val($(e.relatedTarget).data('id'));
    $('#frmEjecutivo #receptor_id').val($(e.relatedTarget).data('emisor-id'));
    $('#frmEjecutivo #estado').val(5);
    //console.log($('#frm-updateActive').attr('action'));
});

</script>
@endpush