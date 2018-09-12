<div class="tab-pane fade active" id="aprobado">
	<div class="panel-body">
		<h4>Solicitudes Personales Aprobadas</h4>
		<p>Listado de solicitudes que han sido aprobadas digitalmente y que han sido informadas al departamento Administrativo.</p>
		<p>Para poder culminar con el proceso de solicitud, es necesario que imprima el documento en formato PDF mediante el boton <span class="fa fa-file-pdf-o"></span>. Luego de realizar la impresión debe acercarse con dicho documento al departamento Financiero.</p>
	</div>
	<div class="table-responsive">
		<table id="tbl-aprobado" class="table table-striped m-b-none dataTable">
			<thead>
				<tr class="info">
					<th><button title = 'Buscar un Registro' type="button" class="btn btn-info btn-xs" data-toggle="collapse" href="#collapseSearchApr"><span class="glyphicon glyphicon-search"></span></button></th>
					<th>Nro.</th>
					<th>Fecha Creación</th>
					<th>Destino</th>
					<th>Fecha Salida</th>
					<th>Fecha Llegada</th>
				</tr>
			</thead>
		</table>
	</div>
</div>
@push('script')
	<script>
	    $(document).ready(function () {
	        $('#tbl-aprobado').DataTable({
	            pageLength: 25,
	            processing: true,
	            ajax: "{!! url('autorizaciones/solicitudes/tbl-aprobado') !!}",
	            order: [[ 1, "asc" ]], //ordena incialmente estados activos
	            dom: "<'row'<'toolbar col-sm-8'><'#collapseSearchApr.col-sm-4 panel-collapse collapse'f>r>t<'row'<'col-sm-4'i><'col-sm-4'><'col-sm-4'p>>",
	            language: {"url": "../lang/datatables.spanish.json"},
	            sPaginationType: "full_numbers",
	            columns: [
	            	{data: 'action', name: 'action', orderable: false, searchable: false},
					{data: 'numero_solicitud', name: 'numero_solicitud'},
					{data: 'fecha', name: 'fecha'},
					{data: 'ciudad', name: 'ciudad'},
					{data: 'fecha_salida', name: 'fecha_salida'},
					{data: 'fecha_retorno', name: 'fecha_retorno'}
	            ]
	        });
	    });

	</script>
@endpush