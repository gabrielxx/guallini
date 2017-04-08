@extends('layouts.app2')
@section('content')
<script type="text/javascript" src="{{asset('js/propiedades.js')}}"></script>
<form action="{{url('admin/updatePropiedad')}}" method="POST" id="form" enctype="multipart/form-data">  
    {{ csrf_field() }}
    <input type="hidden" name="id" id="id" value="{{$data->id_propiedad}}">
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-danger" id="panelRender">            
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <div class="row">                            
                        <div class="col-md-6 text-left">           
                            <h1 class="panel-title">
                                <i class="fa fa-building fa-20" aria-hidden="true"></i>
                                Propiedades
                            </h1>
                        </div>                
                    </div>    
                </div>
                <div class="panel-body">
                    <h3>Datos de Propiedad</h3>
                    <hr>
                    <div class="row">                
                        <div class="form-group col-md-4">
                            <label for="tipo_propiedad">Tipo de Propiedad</label>
                            <select name="tipo_propiedad" class="form-control" id="tipo_propiedad" required="">
                                <option value=""> Seleccione</option>
                                @foreach($tipoPropiedad as $row)
                                    @if($data->id_tipo_propiedad == $row->id_tipo_propiedad)
                                        <option value="{{$row->id_tipo_propiedad}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                          <option value="{{$row->id_tipo_propiedad}}"> {{$row->nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="tipo_operacion">Tipo de Operación</label>
                            <select name="tipo_operacion" class="form-control" id="tipo_operacion" required="">
                                <option value=""> Seleccione</option>
                                @foreach($tipoOperacion as $row)
                                    @if($data->id_tipo_operacion == $row->id_tipo_operacion)
                                        <option value="{{$row->id_tipo_operacion}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                        <option value="{{$row->id_tipo_operacion}}"> {{$row->nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="tipo_moneda">Precio</label>
                            <div class="row">
                                <div class="col-md-4">
                                    <select name="tipo_moneda" id="tipo_moneda" class="form-control" required="">
                                        <option value=""> Seleccione</option>
                                        @foreach($tipoMoneda as $row)
                                            @if($data->id_tipo_moneda == $row->id_moneda)
                                                <option value="{{$row->id_moneda}}" selected=""> {{$row->nombre}}</option>
                                            @else
                                                <option value="{{$row->id_moneda}}"> {{$row->nombre}}</option>
                                            @endif
                                        @endforeach
                                    </select>                                
                                </div>
                                <div class="col-md-8">
                                    <input type="type" name="precio" value="{{$data->precio}}" class="form-control" required="">
                                </div>
                            </div>                       
                        </div>
                              <div class="form-group col-md-4">
                        </div>
                    </div>
                    <h3>Datos de Ubicacion</h3>
                    <hr>
                    <div class="row">  
                        <div class="form-group col-md-4">
                            <label for="provincia">Provincia</label>
                            <select name="provincia" class="form-control" id="provincia" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Provincia as $row)
                                @if($data->id_provincia == $row->id_provincia)
                                    <option value="{{$row->id_provincia}}"" selected=""> {{$row->nombre}}</option>
                                @else
                                    <option value="{{$row->id_provincia}}"> {{$row->nombre}}</option>
                                @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="partido">Partido</label>
                            <select name="partido" class="form-control" id="partido" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Partido as $row)
                                    @if($data->id_partido == $row->id_partido)
                                    <option value="{{$row->id_partido}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                        <option value="{{$row->id_partido}}"> {{$row->nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="ciudad">Ciudad</label>
                            <select name="ciudad" class="form-control" id="ciudad" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Ciudad as $row)
                                    @if($data->id_ciudad== $row->id_ciudad)
                                        <option value="{{$row->id_ciudad}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                        <option value="{{$row->id_ciudad}}"> {{$row->nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="localidad">Localidad</label>
                            <select name="localidad" class="form-control" id="localidad" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Localidad as $row)
                                    @if($data->id_localidad == $row->id_localidad)
                                        <option value="{{$row->id_localidad}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                        <option value="{{$row->id_localidad}}"> {{$row->nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="barrio">Barrio</label>
                            <select name="barrio" class="form-control" id="barrio" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Barrio as $row)
                                    @if($data->id_barrio == $row->id_barrio)
                                        <option value="{{$row->id_barrio}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                        <option value="{{$row->id_barrio}}"> {{$row->nombre}}</option>

                                    @endif
                                @endforeach
                            </select>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="zona">Zona</label>
                            <select name="zona" class="form-control" id="zona" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Zona as $row)
                                    @if($data->id_tipo_zona == $row->id_zona)
                                        <option value="{{$row->id_zona}}" selected=""> {{$row->nombre}}</option>
                                    @else
                                        <option value="{{$row->id_zona}}"> {{$row->nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="calle">Dirección</label>
                                <div class="row">
                                    <div class="col-md-8">
                                        <input type="type" name="calle" placeholder="Calle" class="form-control" value="{{$data->calle}}" required="">
                                    </div>
                                    <div class="col-md-4">
                                    <input type="type" name="numero" value="{{$data->nro}}" placeholder="Nro." class="form-control" required="">
                                    </div>
                                </div>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="cerca">Cerca de:</label>
                                <input type="type" name="cerca" value="{{$data->cerca}}"  class="form-control" required="">
                        </div>
                    </div>
                      <h3>Descripción de la Propiedad</h3>
                    <hr>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="planta">Planta:</label>
                                <input type="type" name="planta" value="{{$data->plantas}}" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="estado">Estado:</label>
                                <input type="type" name="estado" class="form-control" value="{{$data->estado}}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="dormitorios">Nro. de Dormitorios:</label>
                                <input type="type" value="{{$data->dormitorios}}" name="dormitorios" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="antiguedad">Antiguedad:</label>
                                <input type="type" name="antiguedad" value="{{$data->antiguedad}}" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="sup_cubierta">Superficie Cubierta:</label>
                                <input type="type" name="sup_cubierta" value="{{$data->sup_cubierta}}" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="sup_descubierta">Superficie Desubierta:</label>
                                <input type="type" name="sup_descubierta" value="{{$data->sup_descubierta}}" class="form-control">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="medida_frente">Medida de Frente:</label>
                                <input type="type" name="medida_frente" value="{{$data->frente_medida}}" class="form-control">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="banios">Nro. de Baños:</label>
                                <input type="type" name="banios" value="{{$data->banios}}" class="form-control">
                        </div>
                         <div class="form-group col-md-12">
                            <label for="dormitorios">Descripción:</label>
                            <textarea name="descripcion" class="form-control">{{$data->descripcion}}</textarea>
                        </div>
                    </div>
                    <h3>Imagenes de la Propiedad</h3>
                    <hr>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="image">Nueva Imagen:</label>
                            <input type="file" class="file" name="image" id="image">
                        </div>
                        <div class="col-md-6">
                            <button  type="button" class="btn btn-danger" id="addImage" style="margin-top: 15px">Guardar</button>
                        </div>
                    </div>
                    <div class="row contImage">
                        <br>
                        @foreach($imagen as $img)
                            <div class="col-md-2 col-sm-3 col-xs-3 text-center" id="img_{{$img->id_imagen}}">
                                <span title="Eliminar" class="btn btn-danger deleteImage" btn-id="{{$img->id_imagen}}">x</span>
                                <a href="{{asset('img/img_propiedades/'.$img->nombre)}}" data-lightbox="roadtrip">
                                <img src="{{asset('img/img_propiedades/'.$img->nombre)}}" class="img-fluid" width="90%" height="100px">                         
                                </a>
                            </div>
                        @endforeach
                    </div>
                    <br>
                    <div class="row">  
                        <div class="form-group col-md-12 text-center">
                            <button type="submit" class="btn btn-success" style="font-size: 20px">
                                <i class="fa fa-home" aria-hidden="true"></i>
                                Guardar Propiedad
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>
</form>
<script type="text/javascript">
    $(function(){
        lightbox.option({
          'resizeDuration': 200,
          'wrapAround': true,
          'maxWidth' : 900,
          'maxHeight' : 500   
        })
        $("#tipo_operacion").select2();
        $("#tipo_propiedad").select2();
        $("#provincia").select2();
        $("#partido").select2();
        $("#ciudad").select2();
        $("#localidad").select2();
        $("#barrio").select2();
        $("#zona").select2();
    })
    propiedadesJs.deleteImage("{{url('admin/deleteImage')}}");
    propiedadesJs.addImage("{{url('admin/addImage')}}","{{asset('img/img_propiedades')}}","{{url('admin/deleteImage')}}");
</script>
@endsection