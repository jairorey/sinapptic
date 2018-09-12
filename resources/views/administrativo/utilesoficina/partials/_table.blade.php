<div class="table-responsive">
    <table id="dtable" data-form="frm-users" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th>ID</th>
            <th></th>
            <th>Material</th>
            <th>Cantidad</th>
            <th>Fecha Solicitado</th>
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
        });
    });
</script>
@endpush