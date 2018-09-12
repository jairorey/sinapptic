
<table class="table table-striped jambo_table table-hover" >
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Nombre</th>
        <th>Unidad de Gestion</th>
        <th>Inicio</th>
        <th>Fin</th>
        <th>Monto</th>
        <th>Monto Real</th>
        <th>Difer.</th>
    </tr>
    </thead>
    <tbody>

    <?php
        $obj = '';
        $acc = '';
        foreach ($reformas as $reforma):
    ?>
    @if($reforma->id_obji)
        @if($obj != $reforma->id_obji)
            <tr class="info">
                <th>{{$reforma->cod_obj_ter}}</th>
                <th colspan="7">{{$reforma->nombre_obji}}</th>
                <?php $obj = $reforma->id_obji ?>
            </tr>
        @endif
    @endif
    @if($reforma->id_acc)
        @if($acc != $reforma->id_acc)
            <tr class="info">
                <th>{{$reforma->cod_obj_ter}}.{{$reforma->codigo_acc}}<small>({{$reforma->id_acc}})</small></th>
                <th colspan="7">{{$reforma->nombre_acc}}</th>
                <?php $acc = $reforma->id_acc ?>
            </tr>
        @endif
    @endif
    <tr class="loadObjetivos" data-id="{{ $reforma->id }}" data-codigo="{{ $reforma->codigo }}" data-nombre="{{ $reforma->nombre }}" style="cursor: pointer;">
        <td>{{$reforma->codigo}} <small>({{$reforma->id}})</small></td>
        <td>{{$reforma->nombre}}</td>
        <td>{{$reforma->u_gestion}}</td>
        <td>{{$reforma->anio_inicio}}</td>
        <td>{{$reforma->anio_inicio + $reforma->duracion -1}}</td>
        <td>{{$reforma->costo_total_estim}}</td>
        <td>{{$reforma->costo_real}}</td>
        <td>{{round($reforma->costo_total_estim,2) - round($reforma->costo_real,2)}}</td>

            {{--<a class="btn btn-primary btn-xs" href="{{route('docreceptor.edit',$reforma->id)}}"><i class="fa fa-pencil"></i> Editar</a>--}}

    </tr>
    <?php endforeach ?>
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