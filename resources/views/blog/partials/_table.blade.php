<div class="table-responsive">
    <table id="dtable" data-form="frm-users" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th>Titulo</th>
            <th></th>
            <th>Departamento</th>
            <th>Fecha</th>
            <th>Estado</th>
        </tr>
        </thead>
    </table>
</div>
@push('script')
<script>
    $(document).ready(function () {
        $('#dtable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{!! route('blog.dtable') !!}",
            order: [[ 4, "desc" ]], //ordena incialmente estados activos
            sDom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
            sPaginationType: "full_numbers",
            language: {"url": "../lang/datatables.spanish.json"},
            columns: [
                {data: 'title', name: 'title'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
                {data: 'departamento', name: 'departamento'},
                {data: 'created_at', name: 'created_at'},
                {data: 'status', name: 'status', orderable: false, searchable: false}
            ]
        });
    });
</script>
@endpush