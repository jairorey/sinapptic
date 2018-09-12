<table id="tableObjetivos" class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Nombre</th>
        <th>Politica Publica</th>
        <th></th>
    </tr>
    </thead>
    <tbody style="font-size: 0.85em">
    <?php foreach ($objetivos as $objetivo): ?>
    <tr class="trObjetivos" data-id="{{ $objetivo->id_objt }}">
        <td>{{ $objetivo->codigo_objt }}</td>
        <td>{{ $objetivo->nombre_objt }}</td>
        <td><a class="btn btn-info btn-xs btn-edit-pnac" data-id="{{ $objetivo->id_objt }}" data-toggle="modal" data-target=".btn-edit-pnac"><i class="fa fa-pencil"></i></a> {{ $objetivo->politicas }}</td>
        <td>
            <a class="btn btn-primary btn-xs" href="{{route('siseftran.planterritorial.metas.show',$objetivo->id_objt)}}"><i class="fa fa-bar-chart"></i> Metas</a>
            <a class="btn btn-primary btn-xs" href="{{route('siseftran.planterritorial.acciones.show',$objetivo->id_objt)}}"><i class="fa fa-caret-square-o-up"></i> Acciones</a>
        </td>
    </tr>
    <?php endforeach ?>
    </tbody>
</table>