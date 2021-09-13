@extends('layouts.app')

@section('content')
        <br>
        <h1 style="color:red;font-family:Brush Script MT;font-size:50px">{{$title}}</h1>
        <hr>
        <br><br>
        <form name="form-inline well col-md-10" method="POST" action="{{route('patient.details')}}">
                @csrf
                <table>
                <tr>
                    <td style="font-family:serif;font-size:20px;"><strong>Enter Patient ID : </strong></td>
                    <td><input type="text" name="patient_id" id="patientid" size="30" placeholder="Please enter valid id..." required>
                    </td>
                </tr>
                <br><br><br>
                <tr>
                     <td colspan="2">
                     <button type="submit" style="float:right" class="btn btn-success">Check</button>
                     </td>
                </tr>
                </table>
        </form>
        @if (session('error'))
            <p class="alert alert-warning col-md-6 mt-3">{{session('error')}}</p>
        @endif
        <br><br><br><br><br><p style="color:red;font-family:Brush Script MT;font-size:30px;">We understand your emergency & privacy </p>
        <br><br><br>
@endsection
