@extends('layouts.app')

@section('content')
        <br>
        <h1 style="color:red;font-family:Brush Script MT;font-size:50px">{{$title}}</h1>
        <hr>
        <p style="color:#0b2525;font-family:serif;font-size:25px;"><b>Select your choice</b></p>
        <!--<img src="/images/hos2.jpg" alt="" frame="border:radius" style="float:right;width:500px;height:300px;">-->
        <br>
        <ul type="button" class="list-group">
        <li type="button" style="background:LimeGreen;width:60%;font-family:serif" class="btn btn-block btn-secondary btn-lg" onclick="window.location.href='/requestmedical'"> Request for Medical Assistant or Medicine delivery </li>
        <li type="button" style="background:LightSeaGreen;width:60%;font-family:serif" class="btn btn-block btn-primary btn-lg" onclick="window.location.href='/samplecollection'"> Request for Sample Collection </li>
        </ul>
        <br><br>
        <p style="color:#004d4d;font-family:serif;font-size:18px;"> Chikista Nin is just a tap away to provide you <br> emergency medical solution at anywhere any<br> time with best medical professionals. <br>
        </p>
        <p style="color:red;font-family:Brush Script MT;font-size:30px;">We understand your emergency & privacy </p>
        <br>
@endsection
