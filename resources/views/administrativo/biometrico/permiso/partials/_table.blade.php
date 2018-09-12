<div class="table-responsive">
    <table id="dtable" data-form="frm-users" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th>Tipo de Permiso</th>
            <th>Salida</th>
            <th>Retorno</th>
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
            ajax: "{!! url('biometrico/permiso/table') !!}",
            order: [[ 1, "desc" ]], //ordena incialmente estados activos
            sDom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
            sPaginationType: "full_numbers",
            language: {"url": "../lang/datatables.spanish.json"},
            columns: [
                {data: 'tipo_permiso', name: 'tipo_permiso'},
                {data: 'salida', name: 'salida'},
                {data: 'retorno', name: 'retorno'}
            ]
        });
    });
</script>
@endpush