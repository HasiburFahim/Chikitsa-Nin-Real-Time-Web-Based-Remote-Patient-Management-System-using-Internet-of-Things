@extends('layouts.app')

@section('content')
        <br>
        <h1 style="color:red;font-family:Brush Script MT;font-size:50px">{{$title}}</h1>
        <hr>
        <p style="color:#0b2525;font-family:serif;font-size:25px;"><b>Visit your portal</b></p>
        <br>
        <ul type="button" class="list-group">
           @if (auth()->user()->role_id == 1)
                <li type="button" style="background:LimeGreen;width:60%;font-family:serif" class="btn btn-block btn-secondary btn-lg" onclick="window.location.href='/adminportal'"> Admin Portal </li>
           @elseif (auth()->user()->role_id == 2)
                <li type="button" style="background:LimeGreen;width:60%;font-family:serif" class="btn btn-block btn-info btn-lg" onclick="window.location.href='/doctorportal'"> Doctor Portal </li>
           @elseif(auth()->user()->role_id == 3)
                <li type="button" style="background:LimeGreen;width:60%;font-family:serif" class="btn btn-block btn-primary btn-lg" onclick="window.location.href='/services'"> Patient Portal </li>
           @else
               <li style="list-style-type: none;width:60%"><a class="btn btn-block btn-primary btn-lg" href="{{route('complete-profile')}}">Complete your profile</a></li> 
          @endif
        </ul>
        <br><br>
        <p style="color:#004d4d;font-family:serif;font-size:18px;"> Chikista Nin is just a tap away to provide you <br> emergency medical solution at anywhere any<br> time with best medical professionals. <br>
        </p>
        <p style="color:red;font-family:Brush Script MT;font-size:30px;">We understand your emergency & privacy </p>
        <br><br><br><br>
@endsection
