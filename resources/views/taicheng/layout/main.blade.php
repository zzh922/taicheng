<html>
<head>
    <title>@yield('title')</title>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        }

        .nav{
            width: 100%;
            background-color: #1ab7ea;
            text-align: center;
            height: 150px;
            line-height: 150px;
        }
        .container{
            width: 100%;
        }
        .content{
            text-align: center;
            background-color: #2ab27b;
            width: 80%;
            margin: 0 auto;
        }
        .footer{
            background-color: #1ab7ea;
            width: 100%;
            position: fixed;
            left: 0px;
            bottom: 0px;
            text-align: center;
            height: 150px;
            line-height: 150px;
        }
        .footer .info{
            width: 60%;
            /*text-align: center;*/
        }
        .footer .pic{
            width: 40%;
        }
        .clear{
            clear: both;
        }
        .footer p .copyright{
            position: relative;
            text-align: center;
            bottom: 0px;
        }


    </style>
</head>
<body>
    @include('taicheng.layout.nav')
    <div class="container">
        <h1 style="text-align: center;">内容页</h1>
        <hr/>
        @yield('content')
    </div>
    @include('taicheng.layout.footer')
</body>
</html>