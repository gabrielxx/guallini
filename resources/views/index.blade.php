@extends('layouts.app')
@section('content')
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <div class="col-md-4 col-sm-4">      
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <i class="fa fa-search fa-20" aria-hidden="true"></i>
                        Buscador
                    </h3>
                </div>
                <div class="panel-body " style="background: #A50402">
                    <div class="form-group col-md-6">
                        <label class="control-label" for="desde">Desde</label>
                        <input type="text" class="form-control" name="desde" id="desde" />
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label" for="hasta">Hasta</label>
                        <input type="text" class="form-control" name="hasta" id="hasta" />
                    </div>
                    <div class="form-group col-md-12">
                        <label class="control-label" for="tipo_op">Tipo de Operación</label>
                        <select class="form-control" name="tipo_op" id="tipo_op">
                            <option value="0">Seleccione</option>   
                            <option value="1">Venta</option>   
                            <option value="2">Alquiler</option>
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label class="control-label" for="barrio">Barrio</label>
                        <select class="form-control" name="barrio" id="barrio">
                            <option value="0">Seleccione</option>   
                            <option value="1">Tigre</option>   
                            <option value="2">Olivos</option>
                            <option value="3">Beccar</option>
                            <option value="4">Virreyes</option>
                            <option value="5">San Fernando</option>
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label class="control-label" for="barrio">Tipo de Propiedad</label>
                        <select class="form-control" name="barrio" id="barrio">
                            <option value="0">Seleccione</option>   
                            <option value="1">Casa</option>   
                            <option value="2">PH</option>
                            <option value="3">Departamento</option>
                            <option value="4">Duplex</option>
                            <option value="5">Local</option>
                            <option value="5">Lote</option>
                        </select>
                    </div>
                    <div class="col-md-12">
                        <button type="button" class="btn btn-danger" style="width: 100%">
                            <i class="fa fa-search fa-20" aria-hidden="true"></i>
                            Buscar
                        </button>
                    </div>
                </div>
            </div>  
        </div>
        <div class="col-md-8 col-sm-8">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h1 class="panel-title">
                        <i class="fa fa-building fa-20" aria-hidden="true"></i>
                        Propiedades
                    </h1>
                </div>
                <div class="panel-body contentPropiedad" >
                    <div class="row">
                        @include('propiedades/_contentPropiedades')                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection