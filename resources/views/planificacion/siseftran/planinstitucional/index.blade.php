@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Siseftran</a></li>
        <li class="active">Plan Institucional</li>
        <li class="active">Misión y visión institucional</li>
    </ul>
    @include('layouts.errors')
    @include('planificacion.siseftran.planinstitucional.components.popups')
    <div class="col-md-12">
        <h3 class="text-success">Misión</h3>
        @include('planificacion.siseftran.planinstitucional.components.mision')
        <h3 class="text-success">Visión</h3>
        @include('planificacion.siseftran.planinstitucional.components.vision')
    </div>
    <div class="col-md-12">
        <h3 class="text-success">Ejes de Desarrollo Territorial</h3>
        @include('planificacion.siseftran.planinstitucional.components.ejes')
    </div>
        <div class="col-md-12">
            <h3 class="text-success">Lista de Objetivos Institucionales<small><span> Eje </span><span id="eje"></span><span>: </span> <span id="ejenombre"></span></small></h3>
            <div class="col-md-5 col-sm-5 col-xs-12 pull-right">
                {!! Form::text('buscar', null, array('id' => 'filter', 'class' => 'form-control', 'placeholder' => 'Filtar...', 'autocomplete' => 'off')) !!}
            </div>    
                <div id="divObjetivos"></div>
        </div>
@stop
@push('script')
    <script type="text/javascript">
        $(document).ready(function() {
            $("#filter").keyup(function () {
                var filter = $(this).val();
                $(".trObjetivos").each(function () {
                    if ($(this).text().search(new RegExp(filter, "i")) < 0) {
                        $(this).fadeOut();
                    } else {
                        $(this).show();
                    }
                });
            });
        });
    </script>
@endpush