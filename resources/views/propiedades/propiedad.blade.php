@extends('layouts.app')
@section('content')
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <div class="col-md-4 col-sm-4">      
            @include('propiedades/buscador')
        </div>
        <div class="col-md-8 col-sm-8">
            <div class="panel panel-danger" id="panelRender">
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
                            <a href="{{asset('img/img_propiedades/'.$propiedad->imagen)}}" data-lightbox="roadtrip"><img src="{{asset('img/img_propiedades/'.$propiedad->imagen)}}" class="img-fluid" height="200px" width="90%"></a>
                            </div>


                            <div class="col-md-6">
                                <span class="textBold">Operación: </span>{{$propiedad->tipoOperacion->nombre}}<br>
                                <span class="textBold">Valor: </span>{{$propiedad->precio}}<br>
                                <span class="textBold">Superficie: </span>{{$propiedad->sup_cubierta}} m<sup>2</sup><br>
                                <span class="textBold">Calle: </span>{{$propiedad->calle.' '.$propiedad->nro}}<br>
                                <span class="textBold">Barrio: </span>{{$propiedad->barrio->nombre}}<br>
                                <span class="textBold">Localidad: </span>{{$propiedad->localidad->nombre}}<br>
                            </div>
                        </div>
                            <br>
                            @if(isset($propiedad->living))
                            <div class="col-md-4">
                                <span class="textBold">Living: </span>{{$propiedad->living}}<br>
                            </div>
                            @endif
                            @if(isset($propiedad->comedor))
                            <div class="col-md-4">
                                <span class="textBold">Comedor: </span>{{$propiedad->comedor}}<br>
                            </div>
                            @endif 
                            @if(isset($propiedad->dormitorio))                           
                            <div class="col-md-4">
                                <span class="textBold">Dormitorio: </span>{{$propiedad->dormitorio}}<br>
                            </div>
                            @endif
                            @if(isset($propiedad->banio))
                            <div class="col-md-4">
                                <span class="textBold">Baño: </span>{{$propiedad->banio}}<br>
                            </div>
                            @endif
                            @if(isset($propiedad->estado))
                            <div class="col-md-4">
                                <span class="textBold">Estado: </span>{{$propiedad->estado}}<br>
                            </div>
                            @endif
                            @if(isset($propiedad->descripcion))
                            <div class="col-md-12">
                                <br>
                                <span class="textBold">Descripción:</span><br>
                                {{$propiedad->descripcion}}
                            </div>
                            @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    lightbox.option({
      'resizeDuration': 200,
      'wrapAround': true,
      'maxWidth' : 900,
      'maxHeight' : 500   
    })
</script>
@endsection