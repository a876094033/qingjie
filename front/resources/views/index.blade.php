@extends('layouts.base')

@section('content')
<div class="row">
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>{{$ecs_count}}<sup style="font-size: 20px">台</sup></h3>
                <p>服务器</p>
            </div>
            <div class="icon">
                <i class="ion ion-document"></i>
            </div>
            <a href="{{url('ecs')}}" class="small-box-footer">更多信息 <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-green">
            <div class="inner">
                <h3>{{$rds_count}}<sup style="font-size: 20px">台</sup></h3>
                <p>数据库</p>
            </div>
            <div class="icon">
                <i class="ion ion-document"></i>
            </div>
            <a href="{{url('rds')}}" class="small-box-footer">更多信息 <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3>{{$manager_count}}<sup style="font-size: 20px">个</sup></h3>
                <p>管理员</p>
            </div>
            <div class="icon">
                <i class="ion ion-person"></i>
            </div>
            <a href="{{url('manager')}}" class="small-box-footer">更多信息 <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>
@stop