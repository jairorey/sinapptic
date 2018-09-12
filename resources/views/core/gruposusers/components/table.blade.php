<div class="table-responsive">
    <table id="tbl-grupos" data-form="frm-grupos" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th>Grupo</th>
            <th>Estado</th>
        </tr>
        </thead>
        <tbody>
             @foreach ($objGruposUsers as $grupouser)
             <tr>
                 <td class="col-sm-10">{{ $grupouser->grupo_id }}</td>
                 <td>{{ $grupouser->active }}</td>
             </tr>
             @endforeach
        </tbody>
    </table>

    
</div>