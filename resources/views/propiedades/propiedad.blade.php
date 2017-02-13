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
                        Propiedad
                    </h1>
                </div>
                <div class="panel-body" >
                    <div class="row textBlack" id="contentPropiedad">
                        <div class="row">                        
                            <div class="col-md-6 text-center">                                
                            <a href="{{asset('img/img_propiedades/'.$propiedad->imagen)}}" data-toggle="lightbox" data-gallery="example-gallery" class="col-md-12">
                                    <img src="{{asset('img/img_propiedades/'.$propiedad->imagen)}}" class="img-fluid" height="200px" width="90%">
                                </a>
                            </div>

                            <div class="col-md-6">
                                <span class="textBold">Operación: </span><br>
                                <span class="textBold">Valor: </span>{{$propiedad->precio}}<br>
                                <span class="textBold">Superficie: </span><br>
                                <span class="textBold">Calle: </span>{{$propiedad->calle.' '.$propiedad->nro}}<br>
                                <span class="textBold">Barrio:</span><br>
                                <span class="textBold">Localidad:</span><br>
                            </div>
                        </div>
                            <br>
                            <div class="col-md-4">
                                <span class="textBold">Living: </span>{{$propiedad->living}}<br>
                                <span class="textBold">Comedor: </span>{{$propiedad->comedor}}<br>
                            </div>
                            <div class="col-md-4">
                                <span class="textBold">Dormitorio: </span>{{$propiedad->dormitorio}}<br>
                                <span class="textBold">Baño: </span>{{$propiedad->banio}}<br>
                            </div>
                            <div class="col-md-4">
                                <span class="textBold">Estado: </span>{{$propiedad->estado}}<br>
                            </div>
                        <div class="col-md-12">
                            <br>
                            <span class="textBold">Descripción:</span><br>
                            {{$propiedad->descripcion}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function ($) {
// delegate calls to data-toggle="lightbox"
$(document).on('click', '[data-toggle="lightbox"]:not([data-gallery="navigateTo"])', function(event) {
    event.preventDefault();
    return $(this).ekkoLightbox({
        onShown: function() {
            if (window.console) {
                return console.log('Checking our the events huh?');
            }
        },
        onNavigate: function(direction, itemIndex) {
            if (window.console) {
                return console.log('Navigating '+direction+'. Current item: '+itemIndex);
            }
        }
    });
});
</script>
@endsection