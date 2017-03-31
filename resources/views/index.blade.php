@extends('layouts.app')
@section('content')
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <div class="col-md-4 col-sm-4">      
            @include('propiedades/buscador')
        </div>
        <div class="col-md-8 col-sm-8">
            <div class="panel panel-danger" id="panelRender">            
                @include('propiedades/_contentPropiedades')                        
            </div>
        </div>
    </div>
</div>
@endsection