{{--@if (count($errors) > 0)
    <div class="alert alert-danger">
        @lang('auth.errors_title'):<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif--}}
<?php $message = Session::get('messaje') ?>
@if($message == 'store')
    <div class="msn alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Mensaje:</strong> Registro creado exitosamente.
    </div>
@endif
@if($message == 'update')
    <div class="msn alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Mensaje:</strong> Registro actualizado exitosamente.
    </div>
@endif

@push('script')
    <script type="text/javascript">
        setTimeout(function() {
            $('.msn').fadeOut('fast');
            }, 10000);
    </script>
@stop