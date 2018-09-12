<div id="divFirmar" class="modal" aria-labelledby="divFirmar">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Responder Solicitud<small> Tomar acción y dar una resolución a la solicitud.</small></h4>
            </div>
            {!! Form::open(array('id' => 'frmAprobar', 'url' => 'autorizaciones/solicitudes/enviar', 'method' => 'POST', 'role' =>'form', 'enctype' => 'multipart/form-data')) !!}
            <div class="modal-body">
                    {!! Form::hidden('solicitud_id', null, array('id' => 'solicitud_id')) !!}
                    {!! Form::hidden('emisor_id', null, array('id' => 'emisor_id')) !!}
                    {!! Form::hidden('receptor_id', null, array('id' => 'receptor_id')) !!}
 
                <div class="form-group">
                    {!! Form::label('estado', 'Respuesta') !!}
                    {!! Form::select('estado', array('5' => 'Aprobar y Firmar', '2' => 'Devolver'), null, array('class' => 'form-control')) !!}
                </div>
                <div id="divFile" class="form-group hidden">
                    <div class="file-loading">
                        <input id="file" name="file" type="file">
                    </div>
                </div>
                <div class="form-group">
                    {!! Form::label('receptor_id', 'Receptor') !!}
                    {!! Form::text('receptor_name', null , array('class' => 'form-control', 'readonly')) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('nota', 'Nota') !!}
                    {!! Form::textarea('nota', null, array('class' => 'form-control')) !!}
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