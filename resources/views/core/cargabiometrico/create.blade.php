@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span>Carga de Horarios</span>
</header>
<div class="panel-body">
    {!! Form::open(['url' => 'laboral/carga/import', 'method' => 'POST', 'role' =>'form', 'class' => 'form-horizontal', 'files' => 'true']) !!}
	<div class="form-group">
		<div class="col-sm-6">
	        <div class="form-group">
	            {!! Form::label('mes', 'Selecciones Mes', array('class' => 'col-md-3 control-label')) !!}
	            <div class="col-md-2">
	                {!! Form::text('mes', null, array('class' => 'form-control')) !!}
	            </div>
	        </div>
		    <div class="form-group">
		    	{!! Form::label('file', 'Seleccione un archivo', array('class' => 'col-md-3 control-label')) !!}
		    	<div class="col-md-6">
					<input type="file" id="file" name = "file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s">
				</div>
			</div>
			<div class="col-lg-offset-3 col-lg-9">
				{!! Form::submit('Cargar Archivo', array('class' => 'btn tbn-sm btn-success')) !!}
			</div>
		</div>
	</div>
    {!! Form::close() !!}
</div>
@stop

@push('script')
    <script type="text/javascript">
        $('#mes').datepicker({
            language:"es",
            format: "mm-yyyy",
            viewMode: "months", 
            minViewMode: "months",
            autoclose:true
        });
    </script>
@endpush