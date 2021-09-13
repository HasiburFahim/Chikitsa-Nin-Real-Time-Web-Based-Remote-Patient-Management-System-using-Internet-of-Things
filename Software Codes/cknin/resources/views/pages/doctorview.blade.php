@extends('layouts.app')

@section('content')
<form>
    <table class="table table-bordered table-striped" style="background-color: cornsilk;color:black;border:solid 2px red;">
        <thead>
            <tr>
                <td>Patient Name: </td>
                <td>Patient ID: </td>
                <td>Patient Age: </td>
                <td>Patient Phone No: </td>
                <td>Patient Email: </td>
            </tr>
        </thead>
        <tbody>
            @foreach ($patient_details as $item)
                <tr>
                    <td>{{$item->name}}</td>
                    <td>{{$item->user_id}}</td>
                    <td>{{$item->age}}</td>
                    <td>{{$item->phone}}</td>
                    <td>{{$item->email}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</form>
    @if ($item->user_id==4)
    <iframe width="900" height="460" frameborder="0" src="https://industrial.ubidots.com/app/dashboards/public/widget/bCLnLZ9noZi2e9sXmEApqtxozGmw872mTiIO7k_Yclo?embed=true"></iframe>

    <iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/1143820/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&type=line"></iframe>
    <iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/1143820/charts/2?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&type=line"></iframe>
    <iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/1143820/widgets/215812"></iframe>
    <iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/1143820/widgets/215813"></iframe>
    @else
        <p style="color:red;font-family:Brush Script MT;font-size:50px;"><b>Patient didn't subscribe for device</b></p>
        <br><br><br><br><br><br><br><br>
    @endif
     
    <br><br><br><br><br><br>
@endsection
