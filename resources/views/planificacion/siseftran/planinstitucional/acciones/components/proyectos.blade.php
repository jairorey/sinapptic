<table id="tableProyectos" class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Codigo</th>
        <th>Proyecto</th>
    </tr>
    </thead>
    <tbody style="font-size: 0.85em">
    <?php foreach ($proyectos as $proyecto): ?>
    <tr class="trProyectos loadProyectos" data-id="{{ $proyecto->id }}" data-codigo="{{ $proyecto->codigo }}" data-nombre="{{ $proyecto->nombre }}" style="cursor: pointer;">
        <td>{{ $proyecto->codigo }}</td>
        <td>{{ $proyecto->nombre }}</td>
    </tr>
    <?php endforeach ?>
    </tbody>
</table>