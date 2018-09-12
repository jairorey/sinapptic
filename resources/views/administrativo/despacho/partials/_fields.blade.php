<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        <div class="row">
            <div class="col-sm-4">
                {!! Form::hidden('id',null, array('id' => 'id')) !!}
                {!! Form::hidden('user_id',null, array('id' => 'user_id')) !!}
                {!! Form::hidden('tipo_solicitud',null, array('id' => 'tipo_solicitud')) !!}
                {!! Form::hidden('emisor_id',null, array('id' => 'emisor_id')) !!}
                {!! Form::hidden('receptor_id',null, array('id' => 'receptor_id')) !!}
                {!! Form::hidden('partida_id', null, array('id' => 'partida_id'))!!}
                {!! Form::hidden('filename',null, array('id' => 'filename')) !!}
                {!! Form::hidden('estado',null, array('id' => 'estado')) !!}
                {!! Form::hidden('nota',null, array('id' => 'nota')) !!}
                {!! Form::label('numero_solicitud', 'Numero de Solicitud') !!}
                {!! Form::text('numero_solicitud', null, array('class' => 'form-control', 'readonly')) !!}
            </div>
            <div class="col-sm-4">
                {!! Form::label('nombre', 'Solicitante') !!}
                @if(isset($solicitud))
                {!! Form::text('nombre', $solicitud->usuario->name. ' '. $solicitud->usuario->lastname, array('class' => 'form-control','readonly')) !!}
                @else
                {!! Form::text('nombre', null, array('class' => 'form-control','readonly')) !!}
                @endif
            </div>
        </div>
        <div class="row m-t-sm">
            <div class="col-sm-4">
                {!! Form::label('fecha_solicitud') !!}
                {!! Form::text('fecha_solicitud', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-5">
                {!! Form::label('ciudad_id', 'Ciudad Destino') !!}
                {!! Form::select('ciudad_id', $objCiudades, null, array('class' => 'form-control'))!!}
            </div>
            <div class="col-sm-3">
                <br />
              {!! Form::text('ciudad_otro', null, array('class' => 'form-control hidden', 'placeholder' => 'Especifique lugar de origen')) !!}
            </div>
        </div>
        <div class="row m-t-sm">
            <div class="col-sm-3">
                {!! Form::label('fecha_salida', 'Fecha Salida') !!}
                {!! Form::text('fecha_salida', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-3">
                {!! Form::label('fecha_retorno', 'Fecha Retorno') !!}
                {!! Form::text('fecha_retorno', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-3">
                {!! Form::label('hora_salida', 'Hora Salida') !!}<br>
                {!! Form::text('hora_salida', null, array('class' => 'form-control combodate', 'data-format' => 'HH:mm', 'data-template' => 'HH : mm')) !!}
            </div>
            <div class="col-sm-3">
                {!! Form::label('hora_retorno', 'Hora Retorno') !!}<br>
                {!! Form::text('hora_retorno', null, array('class' => 'form-control combodate', 'data-format' => 'HH:mm', 'data-template' => 'HH : mm')) !!}
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        {!! Form::label('integrantes', 'Integrantes') !!}
        {!! Form::textarea('integrantes', null, array('class' => 'form-control', 'rows'=>'8')) !!}
    </div>
</div>
<div class="form-group pull-in clearfix">
    <div class="col-sm-12">
        {!! Form::label('descripcion', 'Actividades') !!}
        {!! Form::textarea('descripcion', null, array('class' => 'form-control', 'rows'=>'8')) !!}
    </div>
</div>
@push('script')
<script type="text/javascript">
    $(document).ready(function() {
        $('#fecha_solicitud').datepicker({
            format:'yyyy-mm-dd'
        }).on('changeDate', function(ev) {
            $('.datepicker').hide();
        });
        $('#fecha_salida').datepicker({
            format:'yyyy-mm-dd'
        }).on('changeDate', function(ev) {
            $('.datepicker').hide();
            $('#fecha_retorno')[0].focus();
        });
        $('#fecha_retorno').datepicker({
            format:'yyyy-mm-dd'
        }).on('changeDate', function(ev) {
            $('.datepicker').hide();
        });
    });
</script>
@endpush