<?php

namespace App\Models\Article;
use App\Models\Cat\CatModel;
use Illuminate\Database\Eloquent\Model;

class ArticleModel extends Model
{
    protected $table = 'article';

    function cat(){
        return $this->belongsTo(CatModel::class,'cat_id','id');
    }
}
