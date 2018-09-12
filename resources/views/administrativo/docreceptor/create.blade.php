@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <div class="page-title">
        <div class="title_left">
            <h3>Documentos Externos <small>Documentacion ingresada a la institucion.</small></h3>
        </div>
        <div class="title_right">
            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12">
           <div class="x_panel">
                <div class="x_title">
                    <h2>Crear Documento<small> Formulario de Creacion. </small></h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    {!! Form::open(['route' => 'docreceptor.store', 'method' => 'POST', 'role' =>'form', 'class' => 'form-horizontal']) !!}

                        @include('administrativo.docreceptor.components.fields')

                        <div class="navbar-right">
                            <button type="submit" class="btn btn-primary">Ingresar</button>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>

@stop