<?php

namespace App\Admin\Controllers;

use App\SlideImg;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class SlideImgController extends Controller
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
        return Admin::grid(SlideImg::class, function (Grid $grid) {
            //$grid->model()->where('type',1)->orderBy('sort','desc');
            $grid->id('ID')->sortable();
            $grid->type('板块');
            $grid->pic_url('图片');
            $grid->link_url('链接');
            $grid->sort('排序');
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
        return Admin::form(SlideImg::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->select('type','板块')->options([1=>'首页',2=>'服务']);
            $form->image('pic_url','图片地址')->move('slide_img')->uniqueName();
            $form->url('link_url','链接地址');
            $form->number('sort','排序');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
