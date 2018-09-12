<div class="table-responsive">
    <table id="table" class="table table-striped m-b-none"> 
        <thead>
        <tr>
            <th>Mes</th>
            <th>Año</th>
            <th>Fecha Carga</th>
        </tr>
        </thead>
    </table>
</div>
@push('script')
<script>
    $(document).ready(function () {
        $('#table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{!! url('core/cargabiometrico/table') !!}",
            order: [[ 1, "desc" ]], //ordena incialmente estados activos
            dom: "<'row'<'toolbar col-sm-8'><'col-sm-4'f>r>t<'row'<'col-sm-4'i><'col-sm-4'><'col-sm-4'p>>",
            pagingType: "full_numbers",
            language: {"url": "../lang/datatables.spanish.json"},
            initComplete: function() {
                $('div.toolbar').html('<a href="{{url('core/cargabiometrico/create')}}" class="btn btn-default btn-sm m-sm"><i class="fa fa-upload"></i> Importar Archivo</a>');
            },
            columns: [
                {data: 'mes', name: 'mes'},
                {data: 'anio', name: 'anio'},
                {data: 'created_at', name: 'created_at'}
            ]
        });
    });
</script>
@endpush