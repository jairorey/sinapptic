<!-- VENTANA DE RESPUESTA APROBACION O RECHAZO DE SOLICIITUD -->
<div id="divRemitir" class="modal fade" aria-labelledby="divRemitir">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Responder Solicitud<small> Tomar acción y dar una resolución a la solicitud.</small></h4>
            </div>
            {!! Form::open(array('id' => 'frmAprobar', 'url' => 'autorizaciones/solicitudes/enviar', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data', 'class' =>'form-horizontal')) !!}
            <div class="modal-body">
                {!! Form::hidden('solicitud_id', null, array('id' => 'solicitud_id')) !!}
                {!! Form::hidden('emisor_id', null, array('id' => 'emisor_id')) !!}
                {!! Form::hidden('receptor_id', null, array('id' => 'receptor_id')) !!}

                <div class="form-group">
                    {!! Form::label('estado', 'Respuesta', array('class' => 'col-sm-2 control-label')) !!}
                    <div class="col-sm-10">
                        {!! Form::select('estado', array('5' => 'Aprobar y Firmar', '2' => 'Devolver'), null, array('class' => 'form-control')) !!}
                    </div>
                </div>
                <div id="divFile" class="form-group">
                    {!! Form::label('file', 'Documento', array('class' => 'col-sm-2 control-label')) !!}
                    <div class="col-sm-10">
                        <div class="file-loading">
                            <input id="file" name="file" type="file">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    {!! Form::label('receptor_id', 'Receptor', array('class' => 'col-sm-2 control-label')) !!}
                    <div class="col-sm-10">
                        {!! Form::text('receptor_name', null , array('class' => 'form-control', 'readonly')) !!}
                    </div>
                </div>
                <div class="form-group">
                    {!! Form::label('nota', 'Nota', array('class' => 'col-sm-2 control-label')) !!}
                    <div class="col-sm-10">
                        {!! Form::textarea('nota', null, array('class' => 'form-control')) !!}
                    </div>
                </div>
            </div>
            <div id="divFooter" class="modal-footer">
                <a id="descargar" class='btn btn-sm btn-default' href='#' target='_blank'><i class='fa fa-download'></i> Descargar PDF</a>
                <button type="submit" class="btn btn-success"><span class="fa fa-location-arrow"></span> Aceptar</button>
                <a href="#" class="btn btn-default" data-dismiss="modal"><span class="fa fa-share-square"></span> Cerrar</a>
            </div>
            {!! Form::close() !!}
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

@push('script')
<script type="text/javascript">
    $(document).ready(function() {
        $("#file").fileinput({
            uploadUrl: "{!! url('/uploadpdfsol') !!}",
            uploadExtraData: {_token:"{{csrf_token()}}"},
            language:'es',
            maxFileSize: 1000,
            required: true,
            autoReplace: true,
            showRemove: true,
            showPreview: false,
            showUpload: false,
            msgFilerequired: true,
            showUploadedThumbs:false,
            elErrorContainer: '#kartik-file-errors',
            allowedFileExtensions: ["pdf"]
        }).on("filebatchselected", function(event, files) {
            $("#file").fileinput("upload");
            $('#descargar').addClass('hidden');
        });
    });

    $('#divRemitir').on('show.bs.modal', function(e) {
        $("#file").fileinput("clear");
        $('#descargar').attr('href', '../../downloadpdfsol/' + $(e.relatedTarget).data("solicitud"));
        console.log($(e.relatedTarget).data("solicitud"));
    });

    $('#divRemitir #estado').on('change', function() {
        if(this.value == '2') {
            $('#divFile').addClass('hidden');
        } else {
            $('#divFile').removeClass('hidden');
        }
    });

    function getDocFirmado() {
        $.ajax({
          headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
          url: "{!! url('autorizaciones/solicitudes/doc-firmado') !!}",
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
</script>
@endpush