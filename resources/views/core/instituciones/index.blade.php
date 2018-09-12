@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="panel-heading font-bold">
	    <span>Lista de Departamentos</span>
	</header>
	<div class="panel-body">
	    @include('core.instituciones.components.table')
	</div>
</section>
@stop