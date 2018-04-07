<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('about', AboutController::class);
    $router->resource('companyinfo', CompanyInfoController::class);
    $router->resource('space', SpaceController::class);
    $router->resource('info', InfoController::class);
    $router->resource('infoarticle', InfoArticleController::class);
    $router->resource('spaceform', SpaceFormController::class);
    $router->resource('spaceproject', SpaceProjectController::class);
    $router->resource('slideimg', SlideImgController::class);

});
