@extends('layouts.master')
@section('content')
<div class="row">
	<h2 class="page-header">Lista de Usuarios</h2>
	<?php $message = Session::get('message') ?>
	@if($message == 'store')
	<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<strong>Atencion!</strong> Usuario Creado.
	</div>
	@endif
</div>
<div class="row">
	<div class="table-responsive">
		<table class="table table-striped table-hover table-condensed">
			<thead>
				<tr class="info">
					<th class="text-center">
						<i class="fa fa-ellipsis-h"></i>
					</th>
					<th>Cedula</th>
					<th>Nick</th>
					<th>Nombres</th>
					<th>Apellidos</th>
					<th>Estado</th>
				</tr>
			</thead>
				<tbody>
				<?php foreach ($users as $user): ?>
					<tr>
						<td>
						</td>
						<td>{{$user->identity}}</td>
						<td>{{$user->nick}}</td>
						<td>{{$user->name}}</td>
						<td>{{$user->lastname}}</td>
						<td>{{$user->active}}</td>
					</tr>
					<?php endforeach ?>
				</tbody>
		</table>
	</div>
</div>
</div>
@stop