@if (isset($gruposporusuario))
{{ csrf_field() }}
<table id="tbl-gruposusers" data-form="frm-gruposusers" class="table table-striped m-b-none">
    <thead>
    <tr>
        <th>Grupo</th>
        <th>Rol</th>
        <th>Estado</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
        @foreach ($gruposporusuario as $gxu)
        <tr>
         <td class="col-sm-10">{{ $gxu->grupo_id }}</td>
         <td class="col-sm-10">{{ $gxu->rol }}</td>
         <td>{{ $gxu->active }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endif