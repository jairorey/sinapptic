<div class="modal fade" id="modal-edit-indicador" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">Indicadores</h4>
                <input type="hidden" id="secu" name="secu">
            </div>
            <div class="modal-body">
                <form id="form-indicador" class="form-horizontal form-label-left">
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-6" for="indicador">Indicador
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <textarea id="edt-indicador" required="required" class="form-control" name="edt-indicador" data-parsley-trigger="keyup" data-parsley-minlength="5" data-parsley-maxlength="500" data-parsley-minlength-message="Por favor! La descripcion debe ser mas larga" data-parsley-validation-threshold="10"></textarea>
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
    $(".edit-indicador").on("click", function( event ) {
        event.preventDefault();
        $("#edt-indicador").val($(this).data("indicador"));
    });
</script>