@extends('Home.Common.public')
@section('title')刘洪旭的博客，php博客系统，个人博客系统@endsection

@section('body')
    <div style="padding:0% 8%; margin:2%;">
        @foreach($data as $v)
        <div class="panel panel-default">
            <div class="panel-body"><h2><a href="/article?id={{$v['id']}}" target="_blank">{{$v['title']}}</a></h2></div>
            <table class="table" style="border:0px;width:50%;">
                <tr>
                    <td style="padding:8px 8px 8px 15px;">作者：{{$v['author']}}</td>
                    <td>时间：{{$v['created_at']}}</td>
                    {{--<td style="border-top: 0px solid #ddd;">分类：{{$v['cat_id']}}</td>--}}
                </tr>
            </table>
            <div class="panel-body" style="border-top: 0px solid #ddd;">
                <p>{!! mb_substr($v['content'],0,380) !!}</p>
            </div>
        </div>
        @endforeach
    </div>
    @endsection

