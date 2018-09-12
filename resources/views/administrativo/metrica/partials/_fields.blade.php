<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('departamento_id', 'Creado por') !!}
        {!! Form::select('departamento_id', $objDepartamentos, null, array('class' => 'form-control', 'readonly' => 'true'))!!}
    </div>
</div>
<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('title', 'Titulo *') !!}
        {!! Form::text('title', null, array('class' => 'form-control')) !!}
    </div>
</div>
<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('subtitle', 'Subtitulo *') !!}
        {!! Form::text('subtitle', null, array('class' => 'form-control')) !!}
    </div>
</div>
<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        <div class="btn-toolbar m-b-sm btn-editor" data-role="editor-toolbar" data-target="#content">
          
          <div class="btn-group">
            <a class="btn btn-default btn-sm" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
            <a class="btn btn-default btn-sm" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
            <a class="btn btn-default btn-sm" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
            <a class="btn btn-default btn-sm" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
          </div>
          
          <div class="btn-group">
          <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
            <div class="dropdown-menu">
              <div class="input-group m-l-xs m-r-xs">
                <input class="form-control input-sm" placeholder="URL" type="text" data-edit="createLink"/>
                <div class="input-group-btn">
                  <button class="btn btn-default btn-sm" type="button">Add</button>
                </div>
              </div>
            </div>
            <a class="btn btn-default btn-sm" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
          </div>
          
          <div class="btn-group">
            <a class="btn btn-default btn-sm" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
            <a class="btn btn-default btn-sm" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
          </div>
        </div>
        <div id="content" class="form-control">
        </div>
    </div>
</div>

@if(!isset($edit))
<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('image', 'Imagen') !!} <br/>
        <input id="image" type="file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s">
    </div>
    <div class="col-sm-6">
        {!! Form::label('type', 'Tipo de Post') !!}
        {!! Form::select('type', array('1'=>'Bloque Principal','2'=>'Bloque Secundario'), null, array('class' => 'form-control'))!!}
    </div>
</div>
@endif
<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('status', 'Estado') !!}
        {!! Form::select('status', array('1'=>'Activo','2'=>'Inactivo'), null, array('class' => 'form-control'))!!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('order', 'Orden') !!}
        {!! Form::select('order', array('1' => 'Normal', '2' => 'Fijado'),null,array('class' => 'form-control'))!!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('url', 'Dirección URL') !!}
        {!! Form::text('url', null, array('class' => 'form-control', 'placeholder'=>'Http://')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('source', 'Fuente de Noticia') !!}
        {!! Form::text('source', null, array('class' => 'form-control', 'placeholder'=>'Http://')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('url_source', 'Dirección URL Fuente de Noticia') !!}
        {!! Form::text('url_source', null, array('class' => 'form-control', 'placeholder'=>'Http://')) !!}
    </div>
</div>

@push('script')
<script>
    $('#content').wysiwyg({
    hotKeys: {
        'ctrl+b meta+b': 'bold',
        'ctrl+i meta+i': 'italic',
        'ctrl+u meta+u': 'underline',
        'ctrl+z meta+z': 'undo',
        'ctrl+y meta+y meta+shift+z': 'redo'
      }
    });
</script>
@endpush