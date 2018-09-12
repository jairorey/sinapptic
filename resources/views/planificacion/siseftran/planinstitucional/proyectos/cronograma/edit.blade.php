<div class="modal fade" id="modal-edit-cronograma" tabindex="-1" role="dialog" aria-hidden="true">
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
                    {!! Form::text('edt_id', null, array('class' => 'form-control hidden')) !!}
                    <div class="form-group">
                        {!! Form::label('edt_nombre', 'Nombre', array('class' => 'col-md-2 control-label')) !!}
                        <div class="col-md-10">
                            {!! Form::textarea('edt_nombre', null, array('class' => 'form-control', 'rows' => '3')) !!}
                        </div>
                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        {!! Form::label('edt_vinicial', 'Valor Inicial', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-8">
                            {!! Form::text('edt_vinicial', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        {!! Form::label('edt_trim1', 'Trim. 1', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-8">
                            {!! Form::text('edt_trim1', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        {!! Form::label('edt_ffinanciera', 'Fuente Financiera', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-8">
                            {!! Form::text('edt_ffinanciera', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        {!! Form::label('edt_trim2', 'Trim. 2', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-8">
                            {!! Form::text('edt_trim2', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        {!! Form::label('edt_trim3', 'Trim. 3', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-8">
                            {!! Form::text('edt_trim3', null, array('class' => 'form-control')) !!}
                        </div>
                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                    </div>
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        {!! Form::label('edt_trim4', 'Trim. 4', array('class' => 'col-md-4 control-label')) !!}
                        <div class="col-md-8">
                            {!! Form::text('edt_trim4', null, array('class' => 'form-control')) !!}
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

<script type="text/javascript">
    $(".edit-cronograma").on("click", function( event ) {
        event.preventDefault();
        //console.log($(this).parent().parent().find(".nombre").text());
        $("#edt_id").val($(this).data("id"));
        $("#edt_nombre").val($(this).parent().parent().find(".nombre").text());
        $("#edt_vinicial").val($(this).parent().parent().find(".vinicial").text());
        $("#edt_ffinanciera").val($(this).parent().parent().find(".ffinanciera").text());
        $("#edt_trim1").val($(this).parent().parent().find(".grupo1").text());
        $("#edt_trim2").val($(this).parent().parent().find(".grupo2").text());
        $("#edt_trim3").val($(this).parent().parent().find(".grupo3").text());
        $("#edt_trim4").val($(this).parent().parent().find(".grupo4").text());
    });
</script>