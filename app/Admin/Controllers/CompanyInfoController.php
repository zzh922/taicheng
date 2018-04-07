<?php

namespace App\Admin\Controllers;

use App\CompanyInfo;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class CompanyInfoController extends Controller
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
        return Admin::grid(CompanyInfo::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->name('公司名称');
            $grid->address('公司地址');
            $grid->tel('公司电话');
            $grid->email('公司邮箱');
            $grid->qrcode('二维码');
            $grid->longitude('经度');
            $grid->latitude('纬度');
            $grid->copyright('版权');
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
        return Admin::form(CompanyInfo::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('name','公司名称');
            $form->text('address','公司地址');
            $form->mobile('tel','公司电话');
            $form->email('email','公司邮箱');
            $form->image('qrcode')->move('qrcode')->uniqueName();
            $form->text('longitude','经度');
            $form->text('latitude','纬度');
            $form->text('copyright','版权');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
