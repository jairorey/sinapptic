<div class="form-group">
    {!! csrf_field() !!}
    <div class="col-lg-6">
        <div class="form-group">
            {!! Form::label('institucion_id', 'Institucion', array('class' => 'col-md-4 control-label')) !!}
            <div class="col-md-6">
                {!! Form::select('institucion_id', $objInstituciones, null, array('class' => 'form-control'))!!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('remitente', 'Remitente', array('class' => 'col-md-4 control-label')) !!}

            <div class="col-md-6">
                {!! Form::text('name_remitente', null, array('class' => 'form-control')) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('asunto', 'Asunto', array('class' => 'col-md-4 control-label')) !!}
            <div class="col-md-6">
                {!! Form::text('asunto', null, array('class' => 'form-control')) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('observacion', 'Observacion', array('class' => 'col-md-4 control-label')) !!}
            <div class="col-md-6">
                {!! Form::text('observacion', null, array('class' => 'form-control', 'rows' => '3')) !!}
            </div>
        </div>

    </div>

    <div class="col-lg-6">

        <div class="form-group">
            {!! Form::label('referencia', 'Referencia', array('class' => 'col-md-4 control-label')) !!}
            <div class="col-md-6">
                {!! Form::text('referencia', null, array('class' => 'form-control')) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('date_recibido', 'Fecha Recibido', array('class' => 'col-md-4 control-label')) !!}
            <div class="col-md-4 xdisplay_inputx form-group has-feedback">
                {!! Form::text('date_recibido', null, array('class' => 'form-control has-feedback-left')) !!}
                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('date_emitido', 'Fecha Emitido', array('class' => 'col-md-4 control-label')) !!}
            <div class="col-md-4 xdisplay_inputx form-group has-feedback">
                {!! Form::text('date_emitido', null, array('class' => 'form-control has-feedback-left')) !!}
                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
            </div>
        </div>
    </div>
</div>
<div class="ln_solid"></div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#date_recibido,#date_emitido').daterangepicker({
            singleDatePicker: true,
            calender_style: "picker_1"
        }, function (start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
    });
</script>