<table id="tableObjetivos" class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Nombre</th>
        <th>Politica Publica</th>
        <th>Obj. Nacional</th>
        <th></th>
    </tr>
    </thead>
    <tbody style="font-size: 0.85em">
    <?php foreach ($objetivos as $objetivo): ?>
    <tr class="trObjetivos" data-id="{{ $objetivo->id }}">
        <td>{{ $objetivo->codigo }}</td>
        <td>{{ $objetivo->nombre }}</td>
        <td><a class="btn btn-info btn-xs btn-edit-pnac" data-id="{{ $objetivo->id }}" data-toggle="modal" data-target=".btn-edit-pnac"><i class="fa fa-pencil"></i></a> {{ $objetivo->desc_politicas }}</td>
        <td>{{ $objetivo->pnac_nombre }}</td>
        <td>
            <a class="btn btn-primary btn-xs" href="{{route('siseftran.planterritorial.metas.show',$objetivo->id)}}"><i class="fa fa-bar-chart"></i> Metas</a>
            <a class="btn btn-primary btn-xs" href="{{route('siseftran.planterritorial.acciones.show',$objetivo->id)}}"><i class="fa fa-caret-square-o-up"></i> Acciones</a>
        </td>
    </tr>
    <?php endforeach ?>
    </tbody>
</table>