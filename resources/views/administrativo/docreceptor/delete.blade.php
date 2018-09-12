{!! Form::open(['route' => ['docreceptor.destroy',$documento], 'method' => 'DELETE', 'role' =>'form', 'class' => 'form-horizontal']) !!}
    <button type="submit" onclick="return confirm('Seguro que desea Eliminar?')" class="btn btn-danger"><i class="fa fa-trash-o"></i> Eliminar</button>
{!! Form::close() !!}