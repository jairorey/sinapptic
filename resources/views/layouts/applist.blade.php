@extends('layouts.empty')
@section('content')
	<div class="block-area shortcut-area">
    @foreach ($objAccesos as $aplicativo)
        <a style='text-decoration:none' class='shortcut tile' href='{{$aplicativo->url}}'>
        <span style="overflow: hidden;" class='{{$aplicativo->icon}}'></span>
        <small class='datas-text'>{{$aplicativo->name}}</small>
        </a>
    @endforeach
    </div>
    <iron-icon icon="icons:add-shopping-cart"></iron-icon>
@stop