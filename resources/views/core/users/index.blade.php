@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="panel-heading font-bold">
	    <span>Lista de Usuarios</span>
	</header>
	@include('core.users.components.modals')
	@include('core.users.components.gruposusers')
	@include('core.users.components.table')
</section>
@stop