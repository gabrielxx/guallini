<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Propiedad extends Model
{
    protected $table = 'propiedad';
    protected $primaryKey = 'id_propiedad';
    
    public function tipo_propiedad(){
    	return $this->hasOne('App\tipoPropiedad','id_tipo_propiedad','id_tipo_propiedad');
    }
    
    public function image(){
    	return $this->hasOne('App\imagePropiedades','id_propiedad','id_propiedad');
    }

}
