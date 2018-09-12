<div class="table-responsive">
    <table id="tbl-users" data-form="frm-users" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th>Entidad Financiera</th>
            <th>Sector</th>
            <th>Linea de Crédito</th>
            <th>Monto</th>
            <th>% de Interes</th>
            <th>Plazos de tiempo</th>
            <th>Fecha Garantías</th>
            <th>Contacto</th>
        </tr>
        </thead>
    </table>

    
</div>
@push('script')
<script>
    $(document).ready(function () {
        $('#tbl-users').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{!! route('core.users.dtableUsers') !!}",
            order: [[ 7, "desc" ]], //ordena incialmente estados activos
            sDom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
            sPaginationType: "full_numbers",
            language: {"url": "../lang/datatables.spanish.json"},
            columns: [
                {data: 'identity', name: 'identity'},
                {data: 'nick', name: 'nick'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
                {data: 'name', name: 'name'},
                {data: 'lastname', name: 'lastname'},
                {data: 'name', name: 'roles.name'},
                {data: 'created_at', name: 'created_at'},
                {data: 'active', name: 'active', className: "text-center"}
            ]
        });
    });
</script>
@endpush