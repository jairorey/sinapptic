@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <div class="page-title">
        <div class="title_left">
            <h3>Documentos Externos <small>Documentacion ingresada a la institucion.</small></h3>
        </div>

    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Crear Documento<small> Editar: {{ $documento->name_remitente}} </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li>@include('administrativo.docreceptor.delete')</li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    {!! Form::model($documento,array('route' => array('docreceptor.update',$documento), 'method' => 'PUT', 'role' =>'form', 'class' => 'form-horizontal')) !!}

                        @include('administrativo.docreceptor.components.fields')

                        <div class="navbar-right">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-pencil"></i> Editar</button>
                            <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>

@stop