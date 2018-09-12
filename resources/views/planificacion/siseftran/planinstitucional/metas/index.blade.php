@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')

    <div class="clearfix"></div>
    @include('layouts.errors')
    @include('planificacion.siseftran.planterritorial.components.popups')

    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Lista de Metas Territoriales</h2>
                    <div class="nav navbar-right form-inline">
                        <a class="btn btn-info btn-sm" href="{{route('docreceptor.edit')}}"><i class="fa fa-plus-square fa-lg"></i>&nbsp;&nbsp;Nueva Meta</a>
                        <a class="btn btn-default btn-sm" href="{{ URL::previous() }}"><i class="fa fa-backward"></i>&nbsp;&nbsp;Regresar</a>
                        {!! Form::text('buscar', null, array('id' => 'filter', 'class' => 'form-control input-sm', 'placeholder' => 'Filtar...', 'autocomplete' => 'off')) !!}
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    @include('planificacion.siseftran.planterritorial.metas.components.metas')
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script type="text/javascript">
        $(document).ready(function() {
            $("#filter").keyup(function () {
                var filter = $(this).val(), count = 0;
                $(".trBusqueda").each(function () {
                    if ($(this).text().search(new RegExp(filter, "i")) < 0) {
                        $(this).fadeOut();
                    } else {
                        $(this).show();
                        count++;
                    }
                });
                var numberItems = count;
                $("#filter-count").text("Number of Comments = " + count);
            });
        });
    </script>
@stop