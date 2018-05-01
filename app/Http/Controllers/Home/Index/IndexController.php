<?php

namespace App\Http\Controllers\Home\Index;

use App\Models\Article\ArticleModel;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    function index(ArticleModel $article){
        $data = $article::where('status','0')->get();
        return view('Home.Index.index',compact('data'));
    }

}