<div class="table-responsive">
    <table id="tbl-grupos" data-form="frm-grupos" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th width="80px"></th>
            <th>Nombre</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
            @foreach ($grupos as $grupo)
             <tr>
                 <td>
                    
                    <div class='dropdown'>
                        <button id='dd1' class='btn btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                            <span class='fa fa-ellipsis-h'></span>
                        </button>
                        <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                            <li role='presentation' class='dropdown'>
                                <a role='menuitem' href='{{ url('core/grupos/edit', $grupo->id) }}'>Editar</a>
                            </li>
                        </ul>
                    </div>
                </td>
                 <td>{{ $grupo->name }}</td>
                 <td>
                 	<input type="checkbox" name="active">
                 </td>
             </tr>
            @endforeach
        </tbody>
    </table>
</div>