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
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Otorgar Accesos para el usuario <span id="nickAcceso"></span></h4>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-default" data-dismiss="modal">Cancelar</a>
                <a href="#" class="btn btn-primary btn-updateActive" >Aceptar</a>
                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

@push('script')
<script>
function loadTblGrupos(){
    $.ajax({
        headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        url: '{{route('core.grupos.index')}}',
        type: 'POST',
        data: {
            id : $(this).attr('id'),
            _token: '{!! session::token() !!}'
        },
        success: function(resp){
            //console.log('ok');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status);
            console.log(thrownError);
        }
    });
    return view('core.accesos.components.table');
}

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

$('.btn-updateActive').click(function(e) {
    e.preventDefault();
    $.ajax({
        headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        url: '{{route('core.users.updateActive')}}',
        type: 'POST',
        data: {
            id : $(this).attr('id'),
            _token: '{!! session::token() !!}'
        },
        success: function(resp){
            //console.log('ok');
            location.href = '{{ route('core.users.index') }}';
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status);
            console.log(thrownError);
        }
    });
});

</script>
@endpush