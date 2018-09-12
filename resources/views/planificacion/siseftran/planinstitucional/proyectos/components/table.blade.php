<div class="table-responsive">
    <table class="table table-striped m-b-none" data-ride="datatables">
        <tbody>
        <?php
            $obj = '';
            $acc = '';
            foreach ($proyectos as $proyecto):
        ?>
        @if($proyecto->id_obji)
            @if($obj != $proyecto->id_obji)
                <tr class="info">
                    <th>{{$proyecto->cod_obj_ter}}.{{$proyecto->codigo_acc}}</th>
                    <th colspan="8">{{$proyecto->nombre_obji}}</th>
                    <?php $obj = $proyecto->id_obji ?>
                </tr>
            @endif
        @endif
        @if($proyecto->id_acc)
            @if($acc != $proyecto->id_acc)
                <tr class="info">
                    <th>{{$proyecto->cod_obj_ter}}.{{$proyecto->codigo_acc}}<small>({{$proyecto->id_acc}})</small></th>
                    <th colspan="8">{{$proyecto->nombre_acc}}</th>
                    <?php $acc = $proyecto->id_acc ?>
                </tr>
                <tr class="headings">
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Unidad de Gestion</th>
            <th>Inicio</th>
            <th>Fin</th>
            <th>Monto</th>
            <th>M.Real</th>
            <th>Difer.</th>
            <th class="text-center"><span class="fa fa-ellipsis-h"></span></th>
        </tr>
            @endif
        @endif
        @if($proyecto->id)
        <tr class="trUgestion">
            <td>{{$proyecto->codigo}} <small>({{$proyecto->id}})</small></td>
            <td>{{$proyecto->nombre}}</td>
            <td>{{$proyecto->u_gestion}}</td>
            <td>{{$proyecto->anio_inicio}}</td>
            <td>{{$proyecto->anio_inicio + $proyecto->duracion -1}}</td>
            <td>{{$proyecto->costo_total_estim}}</td>
            <td>{{$proyecto->costo_real}}</td>
            <td>{{round($proyecto->costo_total_estim,2) - round($proyecto->costo_real,2)}}</td>
            <td><a class="btn btn-primary btn-xs" href="{{url('siseftran/planinstitucional/proyectos/'.$proyecto->id)}}"><i class="fa fa-pencil fa-fw"></i> Detalle</a></td>


        </tr>
        @endif
        <?php endforeach ?>
        </tbody>
    </table>
</div>
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