<table class="table table-striped jambo_table table-hover">
    <thead>
    <tr class="headings">
        <th>Id</th>
        <th>Institucion</th>
        <th>Referencia</th>
        <th>Remitente</th>
        <th>Asunto</th>
        <th>Recibido</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($documentos as $documento): ?>
    <tr data-id="{{ $documento->doc_id }} ">
        <td>{{$documento->doc_id}}</td>
        <td>{{$documento->name}}</td>
        <td>{{$documento->referencia}}</td>
        <td>{{$documento->name_remitente}}</td>
        <td>{{$documento->asunto}}</td>
        <td>{{$documento->date_recibido}}</td>
        <td>
            <a class="btn btn-primary btn-xs" href="{{url('docreceptor/edit',$documento->doc_id)}}"><i class="fa fa-pencil"></i> Editar</a>
            <a class="btn btn-info btn-xs btn-asignar" data-id="{{ $documento->doc_id }}" data-toggle="modal" data-target=".asignar"><i class="fa fa-location-arrow"></i> Asignar</a>
        </td>
    </tr>
    <?php endforeach ?>
    </tbody>
</table>