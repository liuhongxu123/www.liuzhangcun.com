@extends('Home.Common.public')
@section('title')文章-刘洪旭,刘洪旭的博客，php博客系统，个人博客系统@endsection

@section('body')
<div style="padding:0% 8%;margin:2%">
    <div class="panel panel-default">
        <div class="panel-body"><h2 class="text-center">{{$data['title']}}</h2></div>
        <table class="table" style="border:0px;">
            <tr><td class="text-center">作者：{{$data['author']}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间：{{$data['created_at']}}</td></tr>
        </table>
        <div class="panel-body" style="border-top: 0px solid #ddd;">
            <p style="font-size:16px;line-height:28px;">
                {!! $data['content'] !!}
            </p>
        </div>
    </div>
</div>
@endsection


