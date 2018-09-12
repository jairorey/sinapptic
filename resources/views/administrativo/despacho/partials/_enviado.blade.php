<div class="tab-pane fade active" id="enviado">
	<div class="panel-body">
		<h4>Solicitudes Personales Enviadas</h4>
		<p>Listado de solicitudes que fueron enviadas y que se encuentran en proceso de aprobación.</p>
		<p>Si requiere pre-visualizar el documento en formato PDF, puede dar click al boton <span class="fa fa-file-pdf-o"></span>.</p>
	</div>
	<div class="table-responsive">
		<table id="tbl-enviado" class="table table-striped m-b-none dataTable">
			<thead>
				<tr class="info">
					<th><button title = 'Buscar un Registro' type="button" class="btn btn-info btn-xs" data-toggle="collapse" href="#collapseSearchEnv"><span class="glyphicon glyphicon-search"></span></button></th>
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
          $('#tbl-enviado').DataTable({
              pageLength: 25,
              processing: true,
              ajax: "{!! url('autorizaciones/solicitudes/tbl-enviado') !!}",
              order: [[ 1, "asc" ]], //ordena incialmente estados activos
              dom: "<'row'<'toolbar col-sm-8'><'#collapseSearchEnv.col-sm-4 panel-collapse collapse'f>r>t<'row'<'col-sm-4'i><'col-sm-4'><'col-sm-4'p>>",
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