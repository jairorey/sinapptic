@extends('layouts.master')
@section('content')
    <div class="clearfix"></div>
    @include('layouts.errors')
    @include('planificacion.siseftran.planinstitucional.components.popups')

    <!-- Lista de Proyectos disponibles para realizar reforma -->
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i> Siseftran</a></li>
        <li class="active">Plan Institucional</li>
        <li class="active">Proyectos</li>
    </ul>
    <section class="panel panel-default">
        <header class="panel-heading">
            Lista de Proyectos
            <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
        </header>

        @include('planificacion.siseftran.planinstitucional.proyectos.components.table')
    </section>


@stop
@section('script')
    <script type="text/javascript">
        $(document).ready(function() {
            $('#unidadesgestion').on("change", function(event) {
                var filter = $('#unidadesgestion option:selected').text();
                $(".trUgestion").each(function () {
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