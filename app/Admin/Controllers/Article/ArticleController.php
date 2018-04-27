<?php

namespace App\Admin\Controllers\Article;

use App\Models\Article\ArticleModel;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ArticleController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(ArticleModel::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->cat_id('分类');
            $grid->title('标题');
            $grid->author('作者');
            $grid->content('内容');
            $grid->created_at('创建时间');
            $grid->updated_at('更新时间');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(ArticleModel::class, function (Form $form) {
            $form->display('id', 'ID');
            $form->text('title','标题');
            $form->select('cat_id','分类')->options(['0'=>'顶级分类','1'=>'php']);
            $form->editor('content','内容');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
            $form->hidden('author')->value(Admin::user()->id);
        });
    }
}
