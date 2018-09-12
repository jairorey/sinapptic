<div class="form-group">
    {!! csrf_field() !!}
    {!! Form::label('unidadesgestion', 'Seleccione Unidad', array('class' => 'control-label col-md-3 col-sm-3 col-xs-12')) !!}
    <div class="col-md-9 col-sm-9 col-xs-12">
        {!! Form::select('unidadesgestion', $ug, null, array('class' => 'form-control'))!!}
    </div>
</div>
