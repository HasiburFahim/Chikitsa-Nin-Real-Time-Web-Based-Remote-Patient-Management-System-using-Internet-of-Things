@extends('layouts.app')
@section('content')
<div class="form-group">
    <label for="address_address">Address</label>
    <input type="text" id="address-input" name="address_address" class="form-control map-input">
    <input type="hidden" name="address_latitude" id="address-latitude" value="0" />
    <input type="hidden" name="address_longitude" id="address-longitude" value="0" />
</div>
<div id="address-map-container" style="width:100%;height:400px; ">
    <div style="width: 100%; height: 100%" id="address-map"></div>
</div>
@endsection
@section('scripts')
    @parent
    <script src="https://maps.googleapis.com/maps/api/js?key={{ env('AIzaSyBsQhqjQQ4SvjRfyN_qSiOvchI5GA8O1Ww') }}&libraries=places&callback=initialize" async defer></script>
    <script src="/js/mapInput.js"></script>
@stop
