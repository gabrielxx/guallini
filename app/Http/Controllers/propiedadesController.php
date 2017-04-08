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
use App\Localidad;
use App\tipoMoneda;
use App\Provincia;
use App\Partido;
use App\Ciudad;
use App\Zona;
use DB;
use File;
use Storage;


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
    public function listPropiedades()
    {        
        $propiedades = Propiedad::orderBy('publicar','DESC')->get();
         foreach ($propiedades as $row) {
            $row->tipoPropiedad = tipoPropiedad::find($row->id_tipo_propiedad); 
            $row->tipoOperacion = tipoOperacion::find($row->id_tipo_operacion);
            $row->localidades = Localidad::find($row->id_localidad);
        }
        return view('propiedades/listPropiedades')->with(['propiedades' => $propiedades]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tipoOperacion = tipoOperacion::all();
        $tipoPropiedad = tipoPropiedad::all();
        $tipoMoneda = tipoMoneda::all();
        $Provincia = Provincia::all();
        $Partido = Partido::all();
        $Ciudad = Ciudad::all();
        $Localidad = Localidad::all();
        $Barrio = Barrio::all();
        $Zona = Zona::all();
        return view("propiedades/newPropiedad")->with([
            'tipoOperacion' => $tipoOperacion, 
            'tipoPropiedad' => $tipoPropiedad,
            'tipoMoneda' => $tipoMoneda,
            'Provincia' => $Provincia,
            'Partido' => $Partido,
            'Ciudad' => $Ciudad,
            'Localidad' => $Localidad,
            'Barrio' => $Barrio,
            'Zona' => $Zona,
            ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $propiedad = New Propiedad();
        $propiedad->id_tipo_propiedad = $request->tipo_propiedad;
        $propiedad->id_tipo_operacion = $request->tipo_operacion;
        $propiedad->id_tipo_moneda = $request->tipo_moneda;
        $propiedad->precio = $request->precio;
        $propiedad->id_provincia = $request->partido;
        $propiedad->id_partido = $request->provincia;
        $propiedad->id_ciudad = $request->ciudad;
        $propiedad->id_localidad = $request->localidad;
        $propiedad->id_barrio= $request->barrio;
        $propiedad->id_tipo_zona = $request->zona;
        $propiedad->calle = $request->calle;
        $propiedad->nro = $request->numero;
        $propiedad->cerca = $request->cerca;
        $propiedad->plantas = $request->planta;
        $propiedad->estado = $request->estado;
        $propiedad->dormitorio = $request->dormitorios;
        $propiedad->dormitorios = $request->dormitorios;
        $propiedad->antiguedad = $request->antiguedad;
        $propiedad->sup_cubierta = $request->sup_cubierta;
        $propiedad->sup_descubierta = $request->sup_descubierta;
        $propiedad->sup_total = $request->sup_cubierta + $request->sup_descubierta;
        $propiedad->frente_medida = $request->medida_frente;
        $propiedad->banio = $request->banios;
        $propiedad->descripcion = $request->descripcion;
        $propiedad->publicar = 1;     
        $propiedad->save();
        return redirect('admin/listPropiedades');
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
        $propiedad->tipoOperacion = $tipoOperacion->where('id_tipo_operacion','=',$propiedad->id_tipo_operacion)->first();   
        $propiedad->localidad = $localidades->where('id_localidad','=',$propiedad->id_localidad)->first();
        $propiedad->barrio = $barrio->where('id_barrio','=',$propiedad->id_barrio)->first();
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
        $data = Propiedad::find($id);
        $imagen = imagePropiedades::where('id_propiedad','=',$id)->get();
        $tipoOperacion = tipoOperacion::all();
        $tipoPropiedad = tipoPropiedad::all();
        $tipoMoneda = tipoMoneda::all();
        $Provincia = Provincia::all();
        $Partido = Partido::all();
        $Ciudad = Ciudad::all();
        $Localidad = Localidad::all();
        $Barrio = Barrio::all();
        $Zona = Zona::all();
        return view("propiedades/editarPropiedad")->with([
            'data' => $data,
            'imagen' => $imagen,
            'tipoOperacion' => $tipoOperacion, 
            'tipoPropiedad' => $tipoPropiedad,
            'tipoMoneda' => $tipoMoneda,
            'Provincia' => $Provincia,
            'Partido' => $Partido,
            'Ciudad' => $Ciudad,
            'Localidad' => $Localidad,
            'Barrio' => $Barrio,
            'Zona' => $Zona,
            ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $propiedad = Propiedad::find($request->id);
        $propiedad->id_tipo_propiedad = $request->tipo_propiedad;
        $propiedad->id_tipo_operacion = $request->tipo_operacion;
        $propiedad->id_tipo_moneda = $request->tipo_moneda;
        $propiedad->precio = $request->precio;
        $propiedad->id_provincia = $request->partido;
        $propiedad->id_partido = $request->provincia;
        $propiedad->id_ciudad = $request->ciudad;
        $propiedad->id_localidad = $request->localidad;
        $propiedad->id_barrio= $request->barrio;
        $propiedad->id_tipo_zona = $request->zona;
        $propiedad->calle = $request->calle;
        $propiedad->nro = $request->numero;
        $propiedad->cerca = $request->cerca;
        $propiedad->plantas = $request->planta;
        $propiedad->estado = $request->estado;
        $propiedad->dormitorio = $request->dormitorios;
        $propiedad->dormitorios = $request->dormitorios;
        $propiedad->antiguedad = $request->antiguedad;
        $propiedad->sup_cubierta = $request->sup_cubierta;
        $propiedad->sup_descubierta = $request->sup_descubierta;
        $propiedad->sup_total = $request->sup_cubierta + $request->sup_descubierta;
        $propiedad->frente_medida = $request->medida_frente;
        $propiedad->banio = $request->banios;
        $propiedad->descripcion = $request->descripcion;
        $propiedad->publicar = 1;     
        $propiedad->save();   
        return redirect('admin/listPropiedades');
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
        $map = DB::table('propiedad')
                        ->join('latitud','propiedad.id_propiedad','=','latitud.id_propiedad')
                        ->where('propiedad.publicar','=',1)
                        ->select('latitud.*')
                        ->get();      
        return view('layouts/maps')->with(['map' => $map]);
    }

    public function map2(){
        $map = DB::table('propiedad')
                        ->join('latitud','propiedad.id_propiedad','=','latitud.id_propiedad')
                        ->where('propiedad.publicar','=',1)
                        ->select('latitud.*')
                        ->get();
        return view('layouts/maps2')->with(['map' => $map]);
    }

    public function empresa(){
        return view('propiedades/_empresa');
    } 

    public function deleteImage(Request $request){
        $img = imagePropiedades::find($request->id);
        $eliminar = Storage::delete('img_propiedades/'.$img->nombre);
        $img->delete();
    }

    public function addImage(Request $request){
        $this->validate($request,[
                'image' => 'required|image'
            ]);
        
        $path = Storage::putFile('img_propiedades', $request->file('image'));
        $imagen = explode("img_propiedades/", $path);
        $image = New imagePropiedades();
        $image->id_propiedad = 113;
        $image->id_tipo_imagen = 3;
        $image->nombre = $imagen[1];
        $image->save();
        return $image;
    }
}
