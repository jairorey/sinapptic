@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="wizard clearfix">
	  <ul class="steps">
	    <li class="active"><a href="#recibido" data-toggle="tab"><span class="fa fa-align-justify fa-lg"></span>&nbsp;&nbsp;Recibido</a></li>
	    </ul>
	</header>
	@include('administrativo.autorizaciones.solicitudes.partials._modals')
	@include('administrativo.autorizaciones.solicitudes.partials._remitir')
	<div class="tab-content">
		<div class="tab-pane active" id="elaboracion">
			<div class="panel-body">
				<h4>Solicitudes Recibidas</h4>
				<p>Listado de solicitudes recibidas que requieren de su revisión y aprobación.</p>
				<p>Si necesita que una solicitud sea rectificada debe dar click al botón rechazar y redactar una nota detallando su observación.</p>
			</div>
			<div class="table-responsive">
				<table id="tbl-recepcion" class="table table-striped m-b-none dataTable">
					<thead>
						<tr class="info">
							<th><button title = 'Buscar un Registro' type="button" class="btn btn-info btn-xs" data-toggle="collapse" href="#collapseSearchRecep"><span class="glyphicon glyphicon-search"></span></button></th>
							<th>Nro.</th>
							<th>Emisor</th>
							@if(\Auth::User()->cargo_id == 4)<th>Departamento</th>@endif
							<th>Destino</th>
							<th>Salida</th>
							<th>Retorno</th>
							<th>Emitido</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</section>
@stop
@push('script')
	  <script>
	      $(document).ready(function () {
	      	if ({{ \Auth::User()->cargo_id }} == 4) {
	      		$data = [
				  {data: 'action', name: 'action', orderable: false, searchable: false},
              	  {data: 'numero_solicitud', name: 'numero_solicitud'},
                  {data: 'emisor', name: 'emisor'},
                  {data: 'departamento', name: 'departamento'},
                  {data: 'ciudad', name: 'ciudad'},
                  {data: 'fecha_salida', name: 'salida', searchable: false},
                  {data: 'fecha_retorno', name: 'retorno', searchable: false},
                  {data: 'fecha', name: 'fecha', searchable: false}
          		];
          	} else {
          		$data = [
          		  {data: 'action', name: 'action', orderable: false, searchable: false},
              	  {data: 'numero_solicitud', name: 'numero_solicitud'},
                  {data: 'emisor', name: 'emisor'},
                  {data: 'ciudad', name: 'ciudad'},
                  {data: 'fecha_salida', name: 'salida', searchable: false},
                  {data: 'fecha_retorno', name: 'retorno', searchable: false},
                  {data: 'fecha', name: 'fecha', searchable: false},
          		];
          	}
	          $('#tbl-recepcion').DataTable({
	              pageLength: 25,
	              processing: true,
	              ajax: "{!! url('autorizaciones/solicitudes/tbl-recibido') !!}",
	              order: [[ 1, "asc" ]], //ordena incialmente estados activos
	              dom: "<'row'<'toolbar col-sm-8'><'#collapseSearchElab.col-sm-4 panel-collapse collapse'f>r>t<'row'<'col-sm-4'i><'col-sm-4'><'col-sm-4'p>>",
	              language: {"url": "../../lang/datatables.spanish.json"},
	              sPaginationType: "full_numbers",
	              columns: $data
	          });
	      });

	  </script>
	@endpush