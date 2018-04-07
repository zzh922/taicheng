<?php

namespace App\Extensions;


use Encore\Admin\Form\Field;

class UEditor extends Field
{
    protected static $css = [ #对应public目录
    ];
    public static $isJs=false;
    protected static $js = [  #对应public目录
        '/laravel-u-editor/ueditor.config.js',
//        '/laravel-u-editor/ueditor.all.min.js',
        '/laravel-u-editor/ueditor.all.js',
        '/laravel-u-editor/ueditor.parse.js',  # 自己加的
        '/laravel-u-editor/lang/zh-cn/zh-cn.js',
    ];

    protected $view = 'admin.Tool.UEditor';  #这个模板是从sense项目复制过来的,指向resource/views目录


    public function render()
    {
        $this->script = <<<EOT
        UE.delEditor('ueditor');
        var ue = UE.getEditor('ueditor'); // 默认id是ueditor
        ue.ready(function () {
            ue.execCommand('serverparam', '_token', '{{ csrf_token() }}');
        });
EOT;
        return parent::render();
    }
}