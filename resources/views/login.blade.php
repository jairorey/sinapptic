@section('login')
	@if(!Request::is('auth/login'))
		{!!Form::open(array('url' => '/auth/login', 'method' => 'post', 'class' => 'form-inline'))!!}
		<ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user">
			<li>
				<a>
					<div class="form-group">
						{!!Form::label('email','Email:')!!}
						{!!Form::email('email',null,['class'=>'form-control','size'=>'30','placeholder'=>'Ingrese su Email','value'=>"{{ old('email') }}"])!!}
					</div>
					<div class="form-group">
						{!!Form::label('password','Password:')!!}
						{!!Form::password('password',['class'=>'form-control', 'placeholder'=>'Ingrese su clave'])!!}
					</div>
					<button type="submit" class="btn btn-primary">Iniciar Sesión</button>
				</a>
			</li>
		</ul>
		{!! Form::close() !!}
		@endif
	
@show