@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="panel-heading font-bold">
	    <span>Lista de Aplicativos</span>
	</header>
	@include('core.aplicativos.partials._tblAplicativos')
</section>
@stop