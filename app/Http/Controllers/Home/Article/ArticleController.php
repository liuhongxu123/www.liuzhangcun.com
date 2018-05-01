<?php

namespace App\Http\Controllers\Home\Article;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Article\ArticleModel;

class ArticleController extends Controller
{
    function index(Request $request,ArticleModel $article){
        $id = $request->input('id');
        $data = $article::where('id',$id)->first();
        return view('Home.Article.index',compact('data'));
    }

}