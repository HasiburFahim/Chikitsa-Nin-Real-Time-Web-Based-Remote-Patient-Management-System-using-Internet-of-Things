@extends('layouts.app')

@section('content')
        <br>
        <h1 style="color:red;font-family:Brush Script MT;font-size:50px">{{$title}}</h1>
        <hr>
        <p style="color:#0b2525;font-family:serif;font-size:25px;"><b>Check Request</b></p>
        <br><br>
        <ul type="button" class="list-group">
        <li type="button" style="background:LightSeaGreen;width:60%;font-family:serif" class="btn btn-block btn-info btn-lg" onclick="window.location.href='{{route('request-medical.list')}}'">  Check Medical Assistant Request </li>
        <li type="button" style="background:LimeGreen;width:60%;font-family:serif" class="btn btn-block btn-info btn-lg" onclick="window.location.href='{{route('request-sample.list')}}'"> Check Sample Collection Request </li>
        <li type="button" style="background:LightSeaGreen;width:60%;font-family:serif" class="btn btn-block btn-info btn-lg" onclick="window.location.href='{{route('request-medicine.list')}}'"> Check Medicine Delivery Request</li>
        </ul>
        <br><br>
        <p style="color:red;font-family:Brush Script MT;font-size:30px;float:left">We understand your emergency & privacy </p>
        <br><br><br><br><br>
@endsection
