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
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target=".modal-objins" title="Reformar" data-id="{{ $proyecto->id }}" data-descripcion="{{ $proyecto->obj_descripcion }}"><i class="fa fa-pencil"></i></button>
                                    </div>
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
                        <div class="modal fade modal-objins" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel2">Objetivo Institucional</h4>
                                        <input type="hidden" id="id" name="id" value="{{$proyecto->id}}">
                                    </div>
                                    <div class="modal-body">
                                        <form id="form-objins" class="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-6" for="descripcion">Descripción
                                                </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <textarea id="descripcion" required="required" class="form-control" name="descripcion" data-parsley-trigger="keyup" data-parsley-minlength="5" data-parsley-maxlength="500" data-parsley-minlength-message="Por favor! La descripcion debe ser mas larga" data-parsley-validation-threshold="10">{{$proyecto->obj_descripcion}}</textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-6" for="meta">Meta</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <textarea id="meta" required="required" class="form-control" name="meta" data-parsley-trigger="keyup" data-parsley-minlength="5" data-parsley-maxlength="500" data-parsley-minlength-message="Por favor! La descripcion debe ser mas larga" data-parsley-validation-threshold="10">{{$proyecto->meta_nombre}}</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>
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
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target=".modal-accion" title="Reformar" data-id="{{ $proyecto->acc_nombre }}"><i class="fa fa-pencil"></i></button>
                                    </div>
                                    <div>{{$proyecto->acc_nombre}}</div>
                                </h2>
                                <div class="byline">
                                    {{--mostrar auditoria de cambios--}}
                                    <span>13 hours ago</span> by <a>Jane Smith</a>
                                </div>

                            </div>
                        </div>
                        <div class="modal fade modal-accion" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel2">Accion</h4>
                                        <input type="hidden" id="id" name="id" value="{{$proyecto->id}}">
                                    </div>
                                    <div class="modal-body">
                                        <form id="form-accion" class="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-6" for="accion">Accion
                                                </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <textarea id="accion" required="required" class="form-control" name="accion" data-parsley-trigger="keyup" data-parsley-minlength="5" data-parsley-maxlength="500" data-parsley-minlength-message="Por favor! La descripcion debe ser mas larga" data-parsley-validation-threshold="10">{{$proyecto->acc_nombre}}</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-primary">Guardar</button>
                                    </div>
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
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target=".modal-proyecto" title="Reformar" data-id="{{ $proyecto->id }}"><i class="fa fa-pencil"></i></button>
                                    </div>
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
                        <div class="modal fade modal-proyecto" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel2">Proyecto</h4>
                                        <input type="hidden" id="id" name="id" value="{{$proyecto->id}}">
                                    </div>
                                    <div class="modal-body">
                                        <form id="form-proyecto" class="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-6" for="proyecto">Proyecto
                                                </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input type="text" id="proyecto" name="proyecto" class="form-control" value="{{$proyecto->nombre}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-6" for="necesidad">Necesidad
                                                </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <textarea id="necesidad" required="required" class="form-control" name="necesidad" data-parsley-trigger="keyup" data-parsley-minlength="5" data-parsley-maxlength="500" data-parsley-minlength-message="Por favor! La descripcion debe ser mas larga" data-parsley-validation-threshold="10">{{$proyecto->descripcion}}</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>
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
            <!-- ventanas emergentes para reformas -->

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
            $('.asignar').click(function(e) {
                e.preventDefault();
                var id = $(this).data('id');
                $('#documento_externo_id').val(id);
            })
        });
    </script>
    @stop