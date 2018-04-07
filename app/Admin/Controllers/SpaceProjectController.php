<?php

namespace App\Admin\Controllers;

use App\SpaceProject;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class SpaceProjectController extends Controller
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
        return Admin::grid(SpaceProject::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->space_id('空间id');
            $grid->project('项目');
            $grid->title('项目标题');
            $grid->img_url('图片路径');
            $grid->content('项目内容');
            $grid->longitude('经度');
            $grid->latitude('纬度');
            $grid->created_at('创建时间');
            $grid->updated_at('修改时间');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(SpaceProject::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->number('space_id','空间id');
            $form->text('project','项目');
            $form->text('title','项目标题');
            $form->image('img_url','图片路径')->move('project_img')->uniqueName();
            $form->text('content','项目内容');
            $form->text('longitude','经度');
            $form->text('latitude','纬度');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
