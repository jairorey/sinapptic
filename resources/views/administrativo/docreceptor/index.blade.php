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
    @include('layouts.errors')
    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Lista de Documentos<small>Tabla de Registros </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <a class="btn btn-info btn-sm" href="{{ route('docreceptor.create') }}"><i class="fa fa-plus-square fa-lg"></i>&nbsp;&nbsp;Nuevo Documento</a>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    @include('administrativo.docreceptor.components.table')


                    @include('administrativo.docreceptor.components.popups')

                </div>
            </div>
        </div>
    </div>
@stop