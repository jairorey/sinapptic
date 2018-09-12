@extends('layouts.master')
@section('content')
<div class="m-b-sm">
	<h4 class="m-b-none">Despacho de Solicitudes</h4>
	<small>Estas son las solicitudes aprobadas por la dirección ejecutiva. Como parte del proceso de despacho de solicitudes, primero se debe descargar los documentos para proceder a firmalos mediante el aplicativo Intisign y posteriormente re-subirlos al sistema.<br />Existe 2 formas de realizar la descarga de solicitudes: Forma grupal se debe dar click al botón <span class="badge">Descargar Todo</span>. Forma individual se debe dar click al botón de descarga <span class="badge"><span class="fa fa-download"></span></span> existente en cada item del listado.</small>
</div>
@include('administrativo.despacho.partials._modals')
<section class="panel panel-default">
	<header class="panel-heading clearfix">

		<i class="fa fa-stack-overflow"></i>
      Solicitudes
      <span class="pull-right">
	    <a class="btn-success btn-sm" data-toggle="modal" data-target="#divCarga" href="#"><span class="fa fa-magic"></span> Carga Automática</a>
	    <a class="btn-info btn-sm" href="{{url('despacho/solicitudes/download-all')}}"><span class="fa fa-download"></span> Descargar Todo</a>
	  </span>
    </header>
    <div class="table-responsive">
		<table id="tbl-despacho" class="table table-striped m-b-none">
			<thead>
				<tr>
					<th></th>
					<th>Nro.</th>
					<th>Emisor</th>
					<th>Departamento</th>
					<th>Destino</th>
					<th>Salida</th>
					<th>Retorno</th>
					<th>Emitido</th>
				</tr>
			</thead>
		</table>
	</div>
</section>
@stop
@push('script')
	<script>
	    $(document).ready(function () {
	        $('#tbl-despacho').DataTable({
	            pageLength: 25,
	            processing: true,
	            ajax: "{!! url('despacho/solicitudes/tbl-despacho') !!}",
	            order: [[ 1, "asc" ]], //ordena incialmente estados activos
	            dom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
	            language: {"url": "lang/datatables.spanish.json"},
	            sPaginationType: "full_numbers",
	            columns: [
	            	{data: 'action', name: 'action', orderable: false, searchable: false},
					{data: 'numero_solicitud', name: 'numero_solicitud'},
					{data: 'emisor', name: 'emisor'},
					{data: 'departamento', name: 'departamento'},
					{data: 'ciudad', name: 'ciudad'},
					{data: 'fecha_salida', name: 'salida', searchable: false},
					{data: 'fecha_retorno', name: 'retorno', searchable: false},
					{data: 'fecha', name: 'fecha', searchable: false}
	            ]
	        });
	    });

	</script>
@endpush