<?php

namespace App\Models\Cat;
use App\Models\Article\ArticleModel;
use Illuminate\Database\Eloquent\Model;

class CatModel extends Model
{
    protected $table = 'cat';

    function articleModel(){
        return $this->hasMany(ArticleModel::class);
    }

}
