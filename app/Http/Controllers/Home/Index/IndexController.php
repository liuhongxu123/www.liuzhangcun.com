<?php

namespace App\Http\Controllers\Home\Index;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    function index(){
        return view('Home.Index.index');
    }

}