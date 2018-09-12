<div class="form-group pull-in clearfix">
	<div class="col-sm-12">
    	{!! Form::label('users', 'Usuario') !!}
    	<br>
        {!! Form::select('users', $objUsers, null, array('style' => 'width:400px'))!!}
    </div>
</div>
@push('script')
<script type="text/javascript">
	$(document).ready(function() { $("#users").select2(); });
</script>
@endpush