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
