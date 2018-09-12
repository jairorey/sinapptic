<div id="divCarga" class="modal fade" aria-labelledby="divCarga">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Carga Automática <small>El sistema realiza un reconocimiento de documentos pdf asignandolos automáticamente a su registro original.</small></h4>
            </div>
            <div class="modal-body">
                {!! Form::open(array('url' => 'autorizaciones/solicitudes/store-ruta', 'method' => 'POST', 'role' =>'form', 'id' =>'frmRuta')) !!}
                  <div class="form-group">
                    <div class="dropfile visible-lg">
                      <small>Arrastre y Suelte los documentos Aquí</small>
                    </div>
                  </div>
                    <div class="form-group">
                        
                    </div>
                {!! Form::close() !!}

                <hr />
                <div id="divReconocimiento"></div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-info" id="btnCarga"><span class="fa fa-magic"></span> Reconocer</a>
                <a href="#" class="btn btn-success" id="btnCarga"><span class="fa fa-cloud-upload"></span> Cargar Todo</a>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
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