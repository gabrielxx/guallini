<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">
            <i class="fa fa-search fa-20" aria-hidden="true"></i>
            Buscador
        </h3>
    </div>
    <div class="panel-body " style="background: #A50402">
        <form id="buscador">
            {{ csrf_field() }}
            <div class="form-group col-md-6">
            <label class="control-label" for="desde">Desde</label>
                <input type="text" class="form-control" name="desde" id="desde" />
            </div>
            <div class="form-group col-md-6">
                <label class="control-label" for="hasta">Hasta</label>
                <input type="text" class="form-control" name="hasta" id="hasta" />
            </div>
            <div class="form-group col-md-12">
                <label class="control-label" for="tipo_operacion">Tipo de Operación</label>
                <select class="form-control" name="tipo_operacion" id="tipo_operacion">
                    <option value="0">Seleccione</option> 
                    @foreach($tipoOperacion as $row)
                    <option value="{{$row->id_tipo_operacion}}">{{$row->nombre}}</option>                                
                    @endforeach
                </select>
            </div>
            <div class="form-group col-md-12">
                <label class="control-label" for="barrio">Barrio</label>
                <select class="form-control" name="barrio" id="barrio">
                    <option value="0">Seleccione</option>   
                    @foreach($tipoBarrio as $barrio)
                    <option value="{{$barrio->id_barrio}}">{{$barrio->nombre}}</option>   
                    @endforeach 
                </select>
            </div>
            <div class="form-group col-md-12">
                <label class="control-label" for="tipo_propiedad">Tipo de Propiedad</label>
                <select class="form-control" name="tipo_propiedad" id="tipo_propiedad">
                    <option value="0">Seleccione</option>   
                    @foreach($tipoPropiedad as $propiedad)
                    <option value="{{$propiedad->id_tipo_propiedad}}">{{$propiedad->nombre}}</option>   
                    @endforeach                      
                </select>
            </div>
            <div class="col-md-12 text-center">
                <button type="button" id="buscarPropiedad" class="btn btn-danger" style="width: 100%">
                    <i class="fa fa-search fa-20" aria-hidden="true"></i>
                    Buscar
                </button>
                <hr>
                4725-0795 / 3221-4106 
                www.guallinipropiedades.com
            </div>
        </form>
    </div>
</div>  