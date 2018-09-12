@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="wizard clearfix">
	  <ul class="steps">
	    <li class="active"><a href="#elaboracion" data-toggle="tab"><span class="fa fa-pencil fa-lg"></span>&nbsp;&nbsp;Elaboración</a></li>
	    <li><a href="#enviado" data-toggle="tab"><span class="fa fa-location-arrow fa-lg"></span>&nbsp;&nbsp;Enviado</a></li>
	    <li><a href="#aprobado" data-toggle="tab"><span class="fa fa-check-square-o fa-lg"></span>&nbsp;&nbsp;Aprobado</a></li>
	    <li><a href="#archivado" data-toggle="tab"><span class="fa fa-folder-o fa-lg"></span>&nbsp;&nbsp;Archivado</a></li>
	  </ul>
	  <div class="btn-actions">
	    <a type="button" class="btn btn-default btn-sm" href="{{url('autorizaciones/solicitudes/create')}}"><span class="fa fa-plus"></span> Nueva Solicitud</a>
	  </div>
	</header>
	<div class="tab-content">
	@include('administrativo.autorizaciones.solicitudes.partials._elaboracion')
	@include('administrativo.autorizaciones.solicitudes.partials._enviado')
	@include('administrativo.autorizaciones.solicitudes.partials._aprobado')
	@include('administrativo.autorizaciones.solicitudes.partials._archivado')
	</div>
</section>
@stop