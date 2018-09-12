<table class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Nombre</th>
        <th>Descripcion</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($ejes as $eje): ?>
    <tr class="loadObjetivos" data-id="{{ $eje->id }}" data-codigo="{{ $eje->codigo }}" data-nombre="{{ $eje->nombre }}" style="cursor: pointer;">
        <td>{{$eje->codigo}}</td>
        <td>{{$eje->nombre}}</td>
        <td>{{$eje->descripcion}}</td>

            {{--<a class="btn btn-primary btn-xs" href="{{route('docreceptor.edit',$eje->id)}}"><i class="fa fa-pencil"></i> Editar</a>--}}

    </tr>
    <?php endforeach ?>
    </tbody>
</table>
@push('script')
<script type="text/javascript">
    $('.loadObjetivos').on("click", function( event ) {
        var codigo = $(this).data('codigo');
        var ejenombre = $(this).data('nombre');
        event.preventDefault();
        $.ajax({
            headers:{'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url:'{{route('siseftran.planinstitucional.getObjetivos')}}',
            type: 'POST',
            data: {
                id: $(this).data('id'),
                _token: '{!! session::token() !!}'
            },
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
@endpush