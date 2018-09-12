<div class="form-group pull-in clearfix">
    <div class="col-sm-6">
        <div class="form-group pull-in clearfix">
            <div class="col-sm-6">
                {!! Form::hidden('modulo_id', null, array('class' => 'form-control')) !!}
                {!! Form::label('name', 'Nombre de Opcion') !!}
                {!! Form::text('name', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-6">
                {!! Form::label('url', 'Direccion URL') !!}
                {!! Form::text('url', null, array('class' => 'form-control')) !!}
            </div>
        </div>
        <div class="form-group pull-in clearfix">
            <div class="col-sm-6">
                {!! Form::label('aplicativo_id', 'Nombre de Aplicativo') !!}
                <div class="input-group">
                    {!! Form::select('aplicativo_id', array('asda'=>0), null, array('class' => 'form-control')) !!}
                    <span class="input-group-btn">
                        {!! Form::button('+',array('class' =>'btn btn-default')) !!}
                    </span>
                </div>
            </div>
            <div class="col-sm-6">
                {!! Form::label('panel_opcion_id', 'Nombre de Panel') !!}
                <div class="input-group">
                    {!! Form::select('panel_opcion_id', array('asda'=>0), null, array('class' => 'form-control')) !!}
                    <span class="input-group-btn">
                        {!! Form::button('+',array('class' =>'btn btn-default')) !!}
                    </span>
                </div>
            </div>
        </div>
        <div class="form-group pull-in clearfix">
            <div class="col-sm-8">
                {!! Form::label('icon', 'Icono') !!}
                {!! Form::text('icon', null, array('class' => 'form-control')) !!}
            </div>
            <div class="col-sm-4">
                {!! Form::label('order', 'Orden') !!}
                {!! Form::text('order', null, array('class' => 'form-control')) !!}
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="col-sm-12">
            {!! Form::label('description', 'Descripcion') !!}
            {!! Form::textarea('description', null, array('class' => 'form-control','rows' => '6')) !!}
        </div>
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