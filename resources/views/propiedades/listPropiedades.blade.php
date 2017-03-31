@extends('layouts.usuario')
@section('content')
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-danger" id="panelRender">            
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h1 class="panel-title">
                            <i class="fa fa-building fa-20" aria-hidden="true"></i>
                            Propiedades
                        </h1>
                    </div>
                    <div class="panel-body" >
                        <table id="data-table" class="textBlack" width="100%">
                            <tr>
                                <th>Codigo</th>
                                <th>Tipo de Propiedad</th>
                                <th>Tipo de Operación</th>
                                <th>Localidad</th>
                                <th>Precio</th>
                                <th>Estatus</th>
                            </tr>
                            @foreach($propiedades as $row)
                                <tr>
                                    <td>59620{{$row->id_propiedad}}</td>
                                    <td></td>
                                    <td></td>
                                    <td>{{$row->precio}}</td>
                                    <td></td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection