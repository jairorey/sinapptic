@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')

    <div class="clearfix"></div>
    @include('layouts.errors')
    @include('planificacion.siseftran.planinstitucional.components.popups')
    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Resumen de Proyecto</h2>
                    <div class="nav navbar-right">
                        <a class="btn btn-default btn-sm " href="{{ URL::previous() }}"><i class="fa fa-backward"></i>&nbsp;&nbsp;Regresar</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    @foreach ($proyecto as $proyecto)
                    <ul class="list-unstyled timeline">
                        <li>
                            <div class="block">
                                <div class="tags">
                                    <div href="" class="tag">
                                        <span>Objetivo Ins.</span>
                                    </div>
                                </div>
                                <div class="block_content">
                                    <h2 class="title">
                                        <div>{{$proyecto->obj_descripcion}}</div>
                                    </h2>
                                    <div class="byline">
                                        {{--mostrar auditoria de cambios--}}
                                        <span>13 hours ago</span> by <a>Jane Smith</a>
                                    </div>
                                    <p class="excerpt">

                                    <div><b>Meta</b><br/>{{$proyecto->meta_nombre}}</div>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="block">
                                <div class="tags">
                                    <div href="" class="tag">
                                        <span>Acción</span>
                                    </div>
                                </div>
                                <div class="block_content">
                                    <h2 class="title">
                                        <div>{{$proyecto->acc_nombre}}</div>
                                    </h2>
                                    <div class="byline">
                                        {{--mostrar auditoria de cambios--}}
                                        <span>13 hours ago</span> by <a>Jane Smith</a>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="block">
                                <div class="tags">
                                    <a href="" class="tag">
                                        <span>Proyecto</span>
                                    </a>
                                </div>
                                <div class="block_content">
                                    <h2 class="title">
                                        <div>{{$proyecto->nombre}}</div>
                                    </h2>
                                    <div class="byline">
                                        <span>13 hours ago</span> by <a>Jane Smith</a>
                                    </div>
                                    <p class="excerpt">

                                    <div><b>Necesidad</b><br/>{{$proyecto->descripcion}}</div>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="block">
                                <div class="tags">
                                    <a href="" class="tag">
                                        <span>Indicadores</span>
                                    </a>
                                </div>
                                <div class="block_content">
                                    <h2 class="title">
                                        <a id="id_proyecto" class="hidden">{{$proyecto->id}}</a>
                                    </h2>
                                    <p class="excerpt"><div id="indicadores"></div>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="block">
                                <div class="tags">
                                    <a href="" class="tag">
                                        <span>Actividades</span>
                                    </a>
                                </div>
                                <div class="block_content">
                                    <h2 class="title">
                                        <a id="id_proy" class="hidden">{{$proyecto->id}}</a>
                                    </h2>
                                    <p class="excerpt"><div id="actividades"></div>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="block">
                                <div class="tags">
                                    <a href="" class="tag">
                                        <span>Cronogama</span>
                                    </a>
                                </div>
                                <div class="block_content">
                                    <h2 class="title">
                                        <a id="id_proy" class="hidden">{{$proyecto->id}}</a>
                                    </h2>
                                    <p class="excerpt"><div id="cronograma"></div>
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

@stop
@section('script')
    <script type="text/javascript">
        $(document).ready(function() {
            event.preventDefault();
            // Carga al iniciar los indicadores via ajax
            $.ajax({
                headers:{'X-CSRF-TOKEN': $("#_token").val()},
                url:'{{route('siseftran.planinstitucional.getIndicadores')}}',
                type: 'POST',
                data: {id: $("#id_proyecto").html()},
                beforeSend: function() {
                    $("#indicadores").html("<i class='fa fa-cog fa-spin fa-2x'></i>");
                },
                success: function(data) {
                    $("#indicadores").html(data);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.status);
                    console.log(thrownError);
                }
            });
            // Carga al iniciar las actividades via ajax
            $.ajax({
                headers:{'X-CSRF-TOKEN': $("#_token").val()},
                url:'{{route('siseftran.planinstitucional.getActividades')}}',
                type: 'POST',
                data: {id_proy: $("#id_proy").html()},
                beforeSend: function() {
                    $("#actividades").html("<i class='fa fa-cog fa-spin fa-2x'></i>");
                },
                success: function(data) {
                    $("#actividades").html(data);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.status);
                    console.log(thrownError);
                }
            });
            // Carga al iniciar el cronograma y valores via ajax
            $.ajax({
                headers:{'X-CSRF-TOKEN': $("#_token").val()},
                url:'{{route('siseftran.planinstitucional.getCronograma')}}',
                type: 'POST',
                data: {id: $("#id_proy").html()},
                beforeSend: function() {
                    $("#cronograma").html("<i class='fa fa-cog fa-spin fa-2x'></i>");
                },
                success: function(data) {
                    $("#cronograma").html(data);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.status);
                    console.log(thrownError);
                }
            });
        });
    </script>
@stop