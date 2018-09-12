@extends('layouts.master')

@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Register</div>
				<div class="panel-body">
					@if (count($errors) > 0)
						<div class="alert alert-danger">
							<strong>Whoops!</strong> There were some problems with your input.<br><br>
							<ul>
								@foreach ($errors->all() as $error)
									<li>{{ $error }}</li>
								@endforeach
							</ul>
						</div>
					@endif

					<form class="form-horizontal" role="form" method="POST" action="{{ url('/auth/register') }}">
						{!! csrf_field() !!}

						<div class="form-group">
							<label class="col-md-4 control-label">Doc. Identidad</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="identity" value="{{ old('identity') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Nombres</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="name" value="{{ old('name') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Apellidos</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="lastname" value="{{ old('lastname') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Nick</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="nick" value="{{ old('nick') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Rol</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="rol_id" value="{{ old('rol_id') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Departamento</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="departamento_id" value="{{ old('departamento_id') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Titulo</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="titulo_id" value="{{ old('titulo_id') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">E-Mail</label>
							<div class="col-md-6">
								<input type="email" class="form-control" name="email" value="{{ old('email') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Password</label>
							<div class="col-md-6">
								<input type="password" class="form-control" name="password">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Confirm Password</label>
							<div class="col-md-6">
								<input type="password" class="form-control" name="password_confirmation">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Fecha Nacimiento</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="born" value="{{ old('born') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Genero</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="sex" value="{{ old('sex') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Direccion</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="address1" value="{{ old('address1') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Direccion Alt.</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="address2" value="{{ old('address2') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Celular</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="cell" value="{{ old('cell') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Telefono</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="phone" value="{{ old('phone') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Extension</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="ext" value="{{ old('ext') }}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Estado</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="active" value="{{ old('active') }}">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">
									Register
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
