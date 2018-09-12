<div class="tab-pane active" id="elaboracion">
	<div class="panel-body">
		<h4>Solicitudes Personales en Elaboración</h4>
		<p>Listado de solicitudes que aún no han sido enviadas o que han sido rechazadas y que requieren ser modificadas para su reenvio.</p>
		<p>Si necesita realizar cambios sobre una de las solicitudes, puede dar click al boton <span class="glyphicon glyphicon-th-list"></span>. Si requiere pre-visualizar el documento en formato PDF, puede dar click al boton <span class="fa fa-file-pdf-o"></span>.</p>
		<p>Si una de sus solicitudes enviadas ha vuelto a aparecer en esta lista significa que dicha solicitud fué rechazada, las solicitudes rechazadas suelen contener una nota donde se especifica el motivo o los requerimientos de modificación que necesitan para ser aprobadas, para ello debe dar click al boton <span class="fa fa-warning"></span>.</p>
	</div>
	<div class="table-responsive">
		<table id="tbl-elaboracion" class="table table-striped m-b-none dataTable">
			<thead>
				<tr class="info">
					<th><button title = 'Buscar un Registro' type="button" class="btn btn-info btn-xs" data-toggle="collapse" href="#collapseSearchElab"><span class="glyphicon glyphicon-search"></span></button></th>
					<th>Nro.</th>
					<th>Fecha Creación</th>
					<th>Destino</th>
          <th>Estado</th>
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
          $('#tbl-elaboracion').DataTable({
              pageLength: 25,
              processing: true,
              ajax: "{!! url('autorizaciones/solicitudes/tbl-elaboracion') !!}",
              order: [[ 4, "asc" ]], //ordena por tramites devueltos
              dom: "<'row'<'toolbar col-sm-8'><'#collapseSearchElab.col-sm-4 panel-collapse collapse'f>r>t<'row'<'col-sm-4'i><'col-sm-4'><'col-sm-4'p>>",
              language: {"url": "../lang/datatables.spanish.json"},
              sPaginationType: "full_numbers",
              columns: [
              	  {data: 'action', name: 'action', orderable: false, searchable: false},
                  {data: 'numero_solicitud', name: 'numero_solicitud'},
                  {data: 'fecha', name: 'fecha', searchable: false},
                  {data: 'ciudad', name: 'ciudad'},
                  {data: 'estado', name: 'estado'},
                  {data: 'fecha_salida', name: 'fecha_salida'},
                  {data: 'fecha_retorno', name: 'fecha_retorno'}
              ]
          });
      });

  </script>
@endpush