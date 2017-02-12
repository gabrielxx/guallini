@extends('layouts.app')
@section('content')
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <div class="col-md-4 col-sm-4">      
            @include('propiedades/buscador')
        </div>
        <div class="col-md-8 col-sm-8">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h1 class="panel-title">
                        <i class="fa fa-building fa-20" aria-hidden="true"></i>
                        Propiedades
                    </h1>
                </div>
                <div class="panel-body" >
                    <div class="row" id="contentPropiedad">
                        @include('propiedades/_contentPropiedades')                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection