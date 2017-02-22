<div class="panel panel-danger" id="panelRender">
    <div class="panel-heading">
        <h1 class="panel-title">
            <i class="fa fa-building fa-20" aria-hidden="true"></i>
            Propiedades
        </h1>
    </div>
    <div class="panel-body" >
        <div class="row" id="contentPropiedad">
            @foreach($propiedades as $row)    
            <div class="col-md-4 col-sm-4 divPropiedad">
                <a href="{{url('propiedad',$row->id_propiedad)}}">                                
                    <div class="panel panel-default">                                
                        <div class="panel-body imgPropiedad" >
                            <img src="{{asset('img/img_propiedades/'.$row->imagen)}}" height="150px" width="100%">
                        </div>
                        <div class="panel-footer textPropiedad row">
                            <div class="col-md-12">
                                {{substr($row->descripcion,0,160)}}...
                            </div>
                            <div class="col-md-12 text-right">
                                <span class="info">
                                    Mas Info [+]                                        
                                </span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            @endforeach
        </div>
    </div>
</div>
