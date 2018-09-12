<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('name', 'Nombre') !!}
        {!! Form::text('name', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('institucion_id', 'Institucion') !!}
        {!! Form::select('institucion_id', $objInstituciones, null, array('class' => 'form-control'))!!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('email', 'Email') !!}
        {!! Form::text('email', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('abbreviation', 'Abreviación') !!}
        {!! Form::text('abbreviation', null, array('class' => 'form-control')) !!}
    </div>
</div>
