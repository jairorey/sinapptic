<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        {!! Form::label('cantidad', 'Cantidad') !!}
        {!! Form::text('cantidad', null, array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('detalle', 'Detalle') !!}
        {!! Form::textarea('detalle', null, array('class' => 'form-control')) !!}
    </div>
    <div class="col-sm-6">
        {!! Form::label('observaciones', 'Detalle') !!}
        {!! Form::textarea('observaciones', null, array('class' => 'form-control')) !!}
    </div>
</div>
<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        <div class="form-group pull-in clearfix">
            <div class="col-sm-4">
                {!! Form::label('rango', 'Rango de Permiso') !!}
                {!! Form::select('rango', array(0=>'Horas',1=>'Días'), null, array('class' => 'form-control'))!!}
            </div>
            <div class="col-sm-2">
                {!! Form::label('fechasalida', 'Fecha de Salida') !!}
                {!! Form::text('fechasalida', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-2">
                {!! Form::label('fecharetorno', 'Fecha de Retorno') !!}
                {!! Form::text('fecharetorno', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-2">
                {!! Form::label('horasalida', 'Hora de Salida') !!}
                {!! Form::text('horasalida', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-2">
                {!! Form::label('horaretorno', 'Hora de Retorno') !!}
                {!! Form::text('horaretorno', null, array('class' => 'form-control')) !!}
            </div>
        </div>
        <div class="form-group pull-in clearfix">
            <div class="col-sm-4">
                {!! Form::label('tipo', 'Tipo de Permiso') !!}
                {!! Form::select('tipo', array(0=>'Personal',1=>'Calamidad Doméstica',2=>'Enfermedad/Cita Médica'), null, array('class' => 'form-control'))!!}
            </div>
            <div class="col-sm-4">
                {!! Form::label('totaldias', 'Total de Dias') !!}
                {!! Form::text('totaldias', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-4">
                {!! Form::label('totalhoras', 'Total de Horas') !!}
                {!! Form::text('totalhoras', null, array('class' => 'form-control')) !!}
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        {!! Form::label('observaciones', 'Observaciones') !!}
        {!! Form::textarea('observaciones', null, array('class' => 'form-control','rows' => '5')) !!}
    </div>
</div>


@push('script')
<script type="text/javascript">
    $('#mes').datepicker({
        language:"es",
        format: "mm/yyyy",
        viewMode: "months", 
        minViewMode: "months",
        autoclose:true
    });
</script>
@endpush