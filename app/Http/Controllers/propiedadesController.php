<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Propiedad;
use App\tipoPropiedad;
use App\imagePropiedades;
use App\Barrio;
use App\tipoOperacion;
use App\Preguntas;
use App\Latitud;
use DB;


class propiedadesController extends Controller
{
    /**<
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoPropiedad = tipoPropiedad::all();
        $barrio = Barrio::all();
        $tipoOperacion = tipoOperacion::all();
        $propiedades = Propiedad::where('publicar','=',1)->inRandomOrder()->limit(9)->get();
        $propiedad = array();
        $localidades = $this->getLocalidades();
        foreach ($propiedades as $row) {
            $image = imagePropiedades::where('id_propiedad','=',$row->id_propiedad)->get();
            if(count($image) == 0){
                 $row->imagen = 'no_image.jpg';
            }
            else
            {
                $image = $image->first();
                $row->imagen = $image->nombre;
            }

        }
        return view('index')->with(['propiedades' => $propiedades,
                                    'tipoPropiedad' => $tipoPropiedad,
                                    'tipoBarrio' => $barrio,
                                    'tipoOperacion' => $tipoOperacion,
                                    'localidades' => $localidades]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tipoPropiedad = tipoPropiedad::all();
        $barrio = Barrio::all();
        $tipoOperacion = tipoOperacion::all();
        $propiedad = Propiedad::find($id);
        $localidades = $this->getLocalidades();
        $image = imagePropiedades::where('id_propiedad','=',$id)->get();
        if(count($image) == 0){
             $propiedad->imagen = 'no_image.jpg';
        }
        else
        {
            $image = $image->first();
            $propiedad->imagen = $image->nombre;
        }
        return view('propiedades/propiedad')->with(['propiedad' => $propiedad,
                                    'tipoPropiedad' => $tipoPropiedad,
                                    'tipoBarrio' => $barrio,
                                    'localidades' => $localidades,
                                    'tipoOperacion' => $tipoOperacion]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function search(Request $request){
        $propiedades = Propiedad::where('publicar','=',1)->get();
        if(isset($request->desde)){
            $propiedades = $propiedades->where('precio','>=',$request->desde);
        }
        if(isset($request->hasta)){
            $propiedades = $propiedades->where('precio','<=',$request->hasta);
        }
        if(isset($request->tipo_operacion) && $request->tipo_operacion != 0){
            $propiedades = $propiedades->where('id_tipo_operacion','=',$request->tipo_operacion);
        }
        if(isset($request->barrio) && $request->barrio != 0){
            $propiedades = $propiedades->where('id_barrio','=',$request->barrio);
        }
        if(isset($request->tipo_propiedad) && $request->tipo_propiedad != 0){
            $propiedades = $propiedades->where('id_tipo_propiedad','=',$request->tipo_propiedad);
        }
        if(isset($request->localidad)){
            $propiedades = $propiedades->where('id_localidad','=',$request->localidad);
        }

        $propiedad = array();
        foreach ($propiedades as $row) {
            $image = imagePropiedades::where('id_propiedad','=',$row->id_propiedad)->get();
            if(count($image) == 0){
                 $row->imagen = 'no_image.jpg';
            }
            else
            {
                $image = $image->first();
                $row->imagen = $image->nombre;
            }

        }
        return view('propiedades/_contentPropiedades')->with(['propiedades' => $propiedades]);
    }
    public function preguntas(){
        $preguntas = Preguntas::orderBy('id_pregunta','asc')->get();
        return view('propiedades/_preguntas')->with(['preguntas' => $preguntas]);
    }

    public function getLocalidades(){
        $barrio = DB::table('localidad')
                    ->join('propiedad','localidad.id_localidad','=','propiedad.id_localidad')
                    ->where('publicar','=',1)
                    ->select('localidad.nombre','localidad.id_localidad',DB::raw('count(*) as total'))
                    ->groupBy('localidad.nombre','localidad.id_localidad')
                    ->orderBy('total','desc')
                    ->get();
        return $barrio;
    }

    public function map(){
        $map = Latitud::all();        
        return view('layouts/maps')->with(['map' => $map]);
    }

    public function map2(){
        $map = Latitud::all();        
        return view('layouts/maps2')->with(['map' => $map]);
    }

    public function empresa(){
        return view('propiedades/_empresa');
    }
}
