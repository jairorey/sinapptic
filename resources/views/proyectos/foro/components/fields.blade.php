<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('identity', 'Doc. Identidad') !!}
        {!! Form::text('identity', null, array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('nick', 'Nick') !!}
        {!! Form::text('nick', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('name', 'Nombres') !!}
        {!! Form::text('name', null, array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('lastname', 'Apellidos') !!}
        {!! Form::text('lastname', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('titulo_id', 'Titulo') !!}
        {!! Form::select('titulo_id', $objTitulos, null, array('class' => 'form-control'))!!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('rol_id', 'Rol') !!}
        {!! Form::select('rol_id', $objRoles, null, array('class' => 'form-control'))!!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('email', 'Email') !!}
        {!! Form::text('email', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-10">
        {!! Form::label('departamento_id', 'Departamento Interno') !!}
        {!! Form::select('departamento_id', $objDepartamentos, null, array('class' => 'form-control'))!!}
    </div>
    <div class="col-sm-2">
        {!! Form::label('ext', '# Extensión') !!}
        {!! Form::text('ext', null, array('class' => 'form-control')) !!}
    </div>
</div>

@if(!isset($edit))
<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('password', 'Password') !!}
        {!! Form::password('password', array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('password_confirmation', 'Confirmar Password') !!}
        {!! Form::password('password_confirmation', array('class' => 'form-control')) !!}
    </div>
</div>
@endif
<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('born', 'Fecha Nacimiento') !!}
        {!! Form::text('born', null, array('class' => 'form-control datepicker-input', 'data-date-format'=>'yyyy-mm-dd','placeholder' => 'YYYY-MM-DD')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('sex', 'Género') !!}
        {!! Form::select('sex', array(1 => 'Masculino', 0 => 'Femenino'),null,array('class' => 'form-control'))!!}

    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('phone', 'Teléfono') !!}
        {!! Form::text('phone', null, array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('cell', 'Movil') !!}
        {!! Form::text('cell', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('address1', 'Dirección domicilio') !!}
        {!! Form::text('address1', null, array('class' => 'form-control')) !!}
    </div>
</div>

<div class="form-group pull-in clearfix">
    <div class="col-sm-9">
        {!! Form::label('address2', 'Dirección alternativa') !!}
        {!! Form::text('address2', null, array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-3">
        <div class="radio">
            <label class="radio-custom">
                {!! Form::radio('active', 1) !!}
                <i class="fa fa-circle-o"></i>
                Activo
            </label>
        </div>
        <div class="radio">
            <label class="radio-custom">
                {!! Form::radio('active', 0) !!}
                <i class="fa fa-circle"></i>
                Inactivo
            </label>
        </div>
    </div>
</div>