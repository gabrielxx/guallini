@extends('layouts.app2')
@section('content')
<form action="{{url('admin/savePropiedad')}}" method="POST">  
    {{ csrf_field() }}
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
                                    <option value="{{$row->id_tipo_propiedad}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="tipo_operacion">Tipo de Operación</label>
                            <select name="tipo_operacion" class="form-control" id="tipo_operacion" required="">
                                <option value=""> Seleccione</option>
                                @foreach($tipoOperacion as $row)
                                    <option value="{{$row->id_tipo_operacion}}"> {{$row->nombre}}</option>
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
                                            <option value="{{$row->id_moneda}}"> {{$row->nombre}}</option>
                                        @endforeach
                                    </select>                                
                                </div>
                                <div class="col-md-8">
                                    <input type="type" name="precio" class="form-control" required="">
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
                                    <option value="{{$row->id_provincia}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="partido">Partido</label>
                            <select name="partido" class="form-control" id="partido" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Partido as $row)
                                    <option value="{{$row->id_partido}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="ciudad">Ciudad</label>
                            <select name="ciudad" class="form-control" id="ciudad" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Ciudad as $row)
                                    <option value="{{$row->id_ciudad}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="localidad">Localidad</label>
                            <select name="localidad" class="form-control" id="localidad" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Localidad as $row)
                                    <option value="{{$row->id_localidad}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="barrio">Barrio</label>
                            <select name="barrio" class="form-control" id="barrio" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Barrio as $row)
                                    <option value="{{$row->id_barrio}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="zona">Zona</label>
                            <select name="zona" class="form-control" id="zona" required="">
                                <option value=""> Seleccione</option>
                                @foreach($Zona as $row)
                                    <option value="{{$row->id_zona}}"> {{$row->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="calle">Dirección</label>
                                <div class="row">
                                    <div class="col-md-8">
                                        <input type="type" name="calle" placeholder="Calle" class="form-control" required="">
                                    </div>
                                    <div class="col-md-4">
                                    <input type="type" name="numero" placeholder="Nro." class="form-control" required="">
                                    </div>
                                </div>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="cerca">Cerca de:</label>
                                <input type="type" name="cerca"  class="form-control" required="">
                        </div>
                    </div>
                      <h3>Descripción de la Propiedad</h3>
                    <hr>
                    <div>
                        <div class="form-group col-md-4">
                            <label for="planta">Planta:</label>
                                <input type="type" name="planta"  class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="estado">Estado:</label>
                                <input type="type" name="estado" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="dormitorios">Nro. de Dormitorios:</label>
                                <input type="type" name="dormitorios" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="antiguedad">Antiguedad:</label>
                                <input type="type" name="antiguedad" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="sup_cubierta">Superficie Cubierta:</label>
                                <input type="type" name="sup_cubierta" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="sup_descubierta">Superficie Desubierta:</label>
                                <input type="type" name="sup_descubierta" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="medida_frente">Medida de Frente:</label>
                                <input type="type" name="medida_frente" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="banios">Nro. de Baños:</label>
                                <input type="type" name="banios" class="form-control" required="">
                        </div>
                         <div class="form-group col-md-12">
                            <label for="dormitorios">Descripción:</label>
                            <textarea name="descripcion" class="form-control"></textarea>
                        </div>
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
        $("#tipo_operacion").select2();
        $("#tipo_propiedad").select2();
        $("#provincia").select2();
        $("#partido").select2();
        $("#ciudad").select2();
        $("#localidad").select2();
        $("#barrio").select2();
        $("#zona").select2();
    })
</script>
@endsection