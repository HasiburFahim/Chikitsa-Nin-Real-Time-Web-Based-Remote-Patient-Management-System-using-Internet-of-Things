@extends('layouts.app')

@section('content')
        <div position="left">
        <h1 style="color:red;font-family:Brush Script MT;font-size:50px"><?php echo $title; ?></h1>
        <hr>
        <video width="520" height="300" controls style="float:right" autoplay>
                <source src="images/num1.mp4" type="video/mp4">
                <source src="images/num1.ogg" type="video/ogg">
        </video>
        <p style="color:#004d4d;font-family:serif;font-size:18px;">Using the app the user can - <br>
        Request for medical assistance. (Thus getting that sensor box and <br> online medical assistance) <br>

        Do self test/ diagnosis. (sample collection at home, and getting <br> result through app)<br>
                
        Get medicine delivery.<br>
                
        Report any kind of inconveniences of the services.</p>
        </div>
        <p style="color:red;font-family:Brush Script MT;font-size:30px;">We understand your emergency & privacy </p>
        <br><br><br><br><br><br><br><br>
@endsection
