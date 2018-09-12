<?php

namespace Sinapptic\Http\Controllers;

use Illuminate\Http\Request;
use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index()
    {
    	return view('home');
    }


}
