@extends('layouts.master')
@section('sidebar')
{!! $sidebar !!}
@stop
@section('content')
    
    <section class="scrollable padder">
        {!! $breadcumb !!}
        <div class="row">
            <div class="col-sm-12">
                @include('layouts.errors')
                @include('proyectos.components.modals')
            </div>
  		</div>
        <div class="row">
        	<div class="col-md-12">
	            <section class="panel panel-default">
	                <header class="panel-heading font-bold">
	                  {!! $title !!}
	                </header>
	                <div class="panel-body">
	                	{!! Form::open(['route' => 'laboral.carga.store', 'method' => 'POST', 'role' =>'form', 'class' => 'form-horizontal']) !!}
	                	<div class="form-group">
	                      <label class="col-sm-2 control-label">Seleccione un archivo</label>
	                      <div class="col-sm-10">
	                        <input type="file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s">
	                      </div>
	                    </div>
	                </div>
	            </section>
            </div>
        </div>
    </section>
@stop