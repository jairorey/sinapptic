<div id="divUpdateActive" class="modal fade" aria-labelledby="divUpdateActive">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Cambiar Estado</h4>
            </div>
            <div class="modal-body">
                <p>Esta seguro que desea cambiar el estado del usuario <span id="nick"></span>?</p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-default" data-dismiss="modal">Cancelar</a>
                <a href="#" class="btn btn-primary btn-updateActive" >Aceptar</a>
                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="divAccesos" class="modal fade" aria-labelledby="divAccesos">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Otorgar Accesos para el usuario <span id="nickAcceso"></span></h4>
            </div>
            <div class="modal-body">
                <div id="tableGrupos"></div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-default" data-dismiss="modal">Cancelar</a>
                <a href="#" class="btn btn-primary btn-updateActive" >Aceptar</a>
                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

@push('script')
<script type="text/javascript">
    $('#divUpdateActive').on('show.bs.modal', function(e){
        $('#divUpdateActive #nick').text($(e.relatedTarget).data('nick'));
        $('.btn-updateActive').attr('id', $(e.relatedTarget).data('id'));
        //console.log($('#frm-updateActive').attr('action'));
    });

    $('#divAccesos').on('show.bs.modal', function(e){
        $('#nickAcceso').text($(e.relatedTarget).data('nick'));
        $('.btn-Accesos').attr('id', $(e.relatedTarget).data('id'));
        // mostrar lista de grupos disponibles
        loadTblGrupos();
        
    });
 

</script>
@endpush