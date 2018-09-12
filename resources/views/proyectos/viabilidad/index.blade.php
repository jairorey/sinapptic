@extends('layouts.masterplus')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <header class="header bg-light dker bg-gradient">
        <p>Viabilidad Económica y Social de Proyectos</p>
    </header>
    @include('layouts.errors')
    @include('proyectos.viabilidad.components.modals')
    <section class="scrollable wrapper">
    	<div class="row">
	        <div class="col-sm-6">
	            {!! Form::open(array('url' => 'users/store', 'method' => 'POST', 'role' =>'form')) !!}
	                <section class="panel panel-default">
	                    <header class="panel-heading">
	                        <span class="h4">Calculos</span>
	                    </header>
	                    <div class="panel-body">
	                        @include('proyectos.viabilidad.components.fields')
	                    </div>
	                    <footer class="panel-footer text-right bg-light lter">
	                        <button type="submit" class="btn btn-success">Ingresar</button>
	                        <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
	                    </footer>
	                </section>
	            {!! Form::close() !!}
	            </div>
	        </div>
	    </div>
        
    </section>
    <!-- EJEMPLO DE VENTANA EN TODO EL CUADRO DE PANTALLA
    <section class="scrollable wrapper">
	    <div class="col-lg-12">
	    	<section class="panel panel-default pos-rlt clearfix">	
			        <header class="panel-heading">
			            <span class="h4">Cálculos</span>
			        </header>
			        <div class="panel-body">
			            @include('proyectos.viabilidad.components.fields')
			        </div>
			        <footer class="panel-footer text-right bg-light lter">
			            <button type="submit" class="btn btn-success">Ingresar</button>
			            <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
			        </footer>
	    	</section>
	    </div>
    </section> -->


@stop