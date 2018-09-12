@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')

    <div class="clearfix"></div>
    @include('layouts.errors')
    @include('planificacion.siseftran.planterritorial.components.popups')

    <div class="page-title">
        <div class="pull-right">
            <a class="btn btn-default btn-sm" href="{{ URL::previous() }}"><i class="fa fa-backward"></i>&nbsp;&nbsp;Regresar</a>
        </div>
        <br>
        <hr />
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Lista de Acciones Territoriales<small>Pulse sobre una accion para mostrar sus respectivos proyectos.</small></h2>
                    <div class="nav navbar-right form-inline">
                        <a class="btn btn-info btn-sm" href="{{route('docreceptor.edit')}}"><i class="fa fa-plus-square fa-lg"></i>&nbsp;&nbsp;Nueva Accion</a>
                        {!! Form::text('buscar', null, array('id' => 'filter', 'class' => 'form-control input-sm', 'placeholder' => 'Filtar...', 'autocomplete' => 'off')) !!}
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    @include('planificacion.siseftran.planterritorial.acciones.components.acciones')
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Lista de Proyectos Territoriales</h2>
                    <div class="nav navbar-right form-inline">
                        <a class="btn btn-info btn-sm" href="{{route('docreceptor.edit')}}"><i class="fa fa-plus-square fa-lg"></i>&nbsp;&nbsp;Nuevo Proyecto</a>
                        {!! Form::text('buscar', null, array('id' => 'filterProyectos', 'class' => 'form-control input-sm', 'placeholder' => 'Filtar...', 'autocomplete' => 'off')) !!}
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div id="divProyectos"></div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script type="text/javascript">
        $(document).ready(function() {
            $("#filter").keyup(function () {
                var filter = $(this).val();
                $(".trBusqueda").each(function () {
                    if ($(this).text().search(new RegExp(filter, "i")) < 0) {
                        $(this).fadeOut();
                    } else {
                        $(this).show();
                    }
                });
            });

            $("#filterProyectos").keyup(function () {
                var filter = $(this).val();
                $(".trProyectos").each(function () {
                    if ($(this).text().search(new RegExp(filter, "i")) < 0) {
                        $(this).fadeOut();
                    } else {
                        $(this).show();
                    }
                });
            });
        });
    </script>
@stop
