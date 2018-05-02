<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>@yield('title')</title>
    <meta name="description" content="刘洪旭,刘洪旭的博客,个人技术博客" />
    <meta name="keywords" content="php,laravel,thinkphp5,easyswoole,linux,swoole,mysql,js,vue,ajax" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        a:hover{
            text-decoration: none;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">刘洪旭</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <!--<li class="active"><a href="#">thinkphp</a></li>-->
                <!--<li><a href="#">laravel</a></li>-->
            </ul>
        </div>
    </div>
</nav>

@yield('body')


<div>
    <p class="text-center">
        vipxuge@gmail.com 版权所有 © 2017-2018 www.liuzhangcun.com  粤ICP备17112935号
    </p>
</div>
</body>
</html>