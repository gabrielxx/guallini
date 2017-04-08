@extends('layouts.app2')
@section('content')
</style>
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <div class="col-md-12">
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
                            <div class="col-md-6 text-right">           
                                <a href="{{url('admin/newPropiedad')}}">          
                                    <button type="button" class="btn btn-success"> Nuevo Usuario </button>
                                </a>    
                            </div>
                        </div>    
                    </div>
                    <div class="panel-body" >
                        <table id="data-table" class="display table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Tipo de Propiedad</th>
                                    <th>Tipo de Operación</th>
                                    <th>Localidad</th>
                                    <th>Precio</th>
                                    <th>Estatus</th>
                                </tr>
                            </thead>
                            <tbody>
                              @foreach($propiedades as $row)
                                  <tr>
                                    <td>
                                        <a href="{{url('admin/editarPropiedad',$row->id_propiedad)}}">
                                            59620{{$row->id_propiedad}}
                                        </a>
                                    </td>
                                    <td>{{$row->tipoPropiedad->nombre}}</td>
                                    <td>{{$row->tipoOperacion->nombre}}</td>
                                    <td>{{$row->localidades->nombre}}</td>
                                    <td>
                                        @if($row->id_tipo_moneda == 1)
                                        $ 
                                        @else
                                        U$S
                                        @endif
                                        {{$row->precio}}</td>
                                        <td>
                                            @if($row->publicar == 1)
                                                <button class="btn btn-success btn-circle">&nbsp;</button>
                                                Publicado
                                            @else
                                                <button class="btn btn-danger btn-circle">&nbsp;</button>
                                                No Publicado
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        TableManageDefault.init();
        })
</script>
@endsection