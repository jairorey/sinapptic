@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="panel-heading font-bold">
	    <span>Historial de cargas realizadas de archivos tipo biometrico </span>
	</header>
	@include('core.cargabiometrico.partials._table')
</section>
@stop