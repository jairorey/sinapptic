<div class="table-responsive">
    <table id="tbl-departamentos" data-form="frm-departamentos" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th>Nombre</th>
        </tr>
        </thead>
    </table>

    
</div>
@push('script')
<script>
    $(document).ready(function () {
        $('#tbl-departamentos').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{!! url('core/instituciones/tbl-instituciones') !!}",
            order: [[ 1, "asc" ]], //ordena incialmente estados activos
            sDom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
            sPaginationType: "full_numbers",
            language: {"url": "../lang/datatables.spanish.json"},
            columns: [
                {data: 'name', name: 'name'}
            ]
        });
    });
</script>
@endpush