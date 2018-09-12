<table id="tableMetas" class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Meta Territorial</th>
        <th>Concepto</th>
        <th>Meta Nacional</th>
    </tr>
    </thead>
    <tbody style="font-size: 0.85em">
    <?php foreach ($metas as $meta): ?>
    <tr class="trBusqueda" data-id="{{ $meta->id_meta }}">
        <td>{{ $meta->codigo }}</td>
        <td>{{ $meta->nombre }}</td>
        <td>{{ $meta->concepto }}</td>
        <td>{{ $meta->meta_nacional }}</td>
    </tr>
    <?php endforeach ?>
    </tbody>
</table>