<div class="table-responsive">
    <table id="tbl-asistencias" class="table table-striped m-b-none dataTable">
        <thead>
        <tr>
            <th></th>
            <th>Nro.</th>
            <th>Tipo</th>
            <th>Fecha Creación</th>
            <th>Destino</th>
            <th>Fecha Salida</th>
            <th>Fecha Llegada</th>
        </tr>
        </thead>
    </table>
</div>

@push('script')
<script>
    $(document).ready(function () {
        $('#tbl-asistencias').DataTable({
            pageLength: 25,
            processing: true,
            serverSide: true,
            ajax: "{!! url('autorizaciones/solicitudes/table') !!}",
            order: [[ 0, "asc" ]], //ordena incialmente estados activos
            dom: "<'row'<'toolbar col-sm-8'><'col-sm-4'f>r>t<'row'<'col-sm-4'i><'col-sm-4'><'col-sm-4'p>>",
            language: {"url": "../../lang/datatables.spanish.json"},
            initComplete: function() {
                $('div.toolbar').html('<a href="{{url('laboral/asistencia/justificacion')}}" class="btn btn-default btn-sm m-sm"><i class="fa fa-eraser"></i>&nbsp;&nbsp;Justificar</a>');
            },
            columns: [
                {data: 'numca', name: 'numca'},
                {data: 'empleado', name: 'empleado'},
                {data: 'dia', name: 'dia'},
                {data: 'fecha', name: 'fecha'},
                {data: 'regentrada', name: 'regentrada', orderable: false, searchable: false},
                {data: 'regsalida', name: 'regsalida', orderable: false, searchable: false},
                {data: 'trabajado', name: 'trabajado', orderable: false, searchable: false},
                {data: 'ausente', name: 'ausente', orderable: false, searchable: false}
            ]
        });
    });

</script>
@endpush