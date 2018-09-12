<table class="table table-striped jambo_table table-hover" >
    <thead>
    <tr class="headings">
        <th>Acciones</th>
    </tr>
    </thead>
    <tbody>

    @foreach ($proyecto as $proyecto):
    <tr class="loadObjetivos" data-id="{{ $proyecto->id }}" data-nombre="{{ $proyecto->nombre }}" style="cursor: pointer;">
        <td>{{$proyecto->nombre}}</td>
    </tr>
    @endforeach
    </tbody>
</table>

<script type="text/javascript">
    $('.loadObjetivos').on("click", function( event ) {
        var codigo = $(this).data('codigo');
        var ejenombre = $(this).data('nombre');
        event.preventDefault();
        $.ajax({
            headers:{'X-CSRF-TOKEN': $("#_token").val()},
            url:'{{route('siseftran.planinstitucional.getObjetivos')}}',
            type: 'POST',
            data: {id: $(this).data('id')},
            success: function(data) {
                $('#eje').html(codigo);
                $('#ejenombre').html(ejenombre);
                $('#divObjetivos').html(data);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log(xhr.status);
                console.log(thrownError);
            }
        });
    });

</script>