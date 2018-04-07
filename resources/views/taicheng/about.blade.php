@extends('taicheng.layout.main')
@section('title', '关于')
    @section('content')
        <div class="content">
            @foreach($abouts as $about)
                <p>{{$about->title}}</p>
                <p>{{$about->summary}}</p>
                {!! $about->content !!}
                <hr/>
            @endforeach
        </div>
    @endsection


