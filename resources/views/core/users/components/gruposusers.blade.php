<div id="divAsignarGrupo" class="modal fade" aria-labelledby="divAsignarGrupo">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Asignación de Grupos</h4>
            </div>
            <div class="modal-body">
                {!! Form::open(array('url' => 'core/gruposusers/store', 'method' => 'POST', 'role' =>'form', 'id' =>'frmgxu', 'class'=>'form-horizontal')) !!}
                <div class="form-group">
                    {!! Form::hidden('user_id',null, array('id' => 'user_id')) !!}
                    {!! Form::label('nick', 'Usuario (Nick)', array('class' => 'col-sm-3 control-label')) !!}
                    <div class="col-lg-9">
                        {!! Form::text('nick', null, array('class' => 'form-control')) !!}
                    </div>
                </div>
                <div class="form-group">
                    {!! Form::label('grupo_id', 'Grupo', array('class' => 'col-sm-3 control-label')) !!}
                    <div class="col-lg-9">
                        {!! Form::select('grupo_id', [null => 'Seleccione un grupo...'], null,  array('class' => 'form-control')) !!}
                    </div>
                </div>
                <div class="form-group">
                    {!! Form::label('rol_id', 'Rol', array('class' => 'col-sm-3 control-label')) !!}
                    <div class="col-lg-9">
                        {!! Form::select('rol_id', [null => 'Seleccione un rol...'], null,  array('class' => 'form-control')) !!}
                    </div>
                </div>
                {!! Form::close() !!}
                <div id="divGruposPorUsuario"></div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-primary btn-updateActive" >Agregar</a>
                <a href="#" class="btn btn-default" data-dismiss="modal">Cerrar</a>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
@push('script')
<script type="text/javascript">
    $("#divGruposUsers").on('show.bs.modal', function(e) {
        $("#frmgxu #user_id").val($(e.relatedTarget).data('id'));
        $("#frmgxu #nick").val($(e.relatedTarget).data('nick'));
        $.get("gruposlist", function( data ) {
          $("#grupo_id").val(data);
        });
        loadTableGxU();
    });

    function loadTableGxU() {
        $.ajax({
          headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
          url: "{!! url('core/gruposusers/tbl-ajaxgxu') !!}",
          type: 'GET',
          data: {
            id: $('#user_id').val()
          },
          success: function(html){
            $('#divGruposPorUsuario').html(html);
          },
          error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status);
            console.log(thrownError);
          }
        });
  }

</script>
@endpush