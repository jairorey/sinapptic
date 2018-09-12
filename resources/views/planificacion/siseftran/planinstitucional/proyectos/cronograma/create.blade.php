<div class="modal fade" id="modal-create-cronograma" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">Indicadores</h4>
                <input type="hidden" id="secu" name="secu">
            </div>
            <div class="modal-body">
                <form id="form-cronograma" class="form-horizontal form-label-left">
                    <div class="form-group">
                        {!! Form::label('nombre', 'Nombre', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-6">
                            {!! Form::text('nombre', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('vinicial', 'Valor Inicial', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-6">
                            {!! Form::text('vinicial', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('ffinanciera', 'Fuente Financiera', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-6">
                            {!! Form::text('ffinanciera', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label(null, 'PlanicifacionFinanciera', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-6">
                            <div class="divider-dashed"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('trim1', 'Trim. 1', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-2">
                            {!! Form::text('trim1', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('trim2', 'Trim. 2', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-2">
                            {!! Form::text('trim2', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('trim3', 'Trim. 3', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-2">
                            {!! Form::text('trim3', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Guardar</button>
            </div>
        </div>
    </div>
</div>
