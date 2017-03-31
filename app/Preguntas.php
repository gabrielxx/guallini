<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Preguntas extends Model
{
    protected $table = 'faq';
    protected $primaryKey = 'id_pregunta';
}
