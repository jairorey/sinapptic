<table id="tableMetas" class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Accion Territorial</th>
    </tr>
    </thead>
    <tbody style="font-size: 0.85em">
    <?php foreach ($acciones as $accion): ?>
    <tr class="trBusqueda loadProyectos" data-id="{{ $accion->id }}" data-codigo="{{ $accion->codigo }}" data-nombre="{{ $accion->nombre }}" style="cursor: pointer;">
        <td>{{ $accion->codigo }}</td>
        <td>{{ $accion->nombre }}</td>
    </tr>
    <?php endforeach ?>
    </tbody>
</table>

<script type="text/javascript">
    $('.loadProyectos').on("click", function( event ) {
        var codigo = $(this).data('codigo');
        var proyectonombre = $(this).data('nombre');
        event.preventDefault();
        $.ajax({
            headers:{'X-CSRF-TOKEN': $("#_token").val()},
            url:'{{route('siseftran.planterritorial.getProyectos')}}',
            type: 'POST',
            data: {id: $(this).data('id')},
            success: function(data) {
                $('#accion').html(codigo);
                $('#proyectonombre').html(proyectonombre);
                $('#divProyectos').html(data);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log(xhr.status);
                console.log(thrownError);
            }
        });
    });

</script>