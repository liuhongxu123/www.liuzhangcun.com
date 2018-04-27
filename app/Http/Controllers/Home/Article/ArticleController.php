<?php

namespace App\Http\Controllers\Home\Article;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ArticleController extends Controller
{
    function index(){
        return view('Home.Article.index');
    }

}