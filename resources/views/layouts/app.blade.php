<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>:: Guallini Propiedades :. Propiedades - Inicio  </title>
    <!--Libreria Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Libreria Bootstrap-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <!--font-awesome-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <!--Datapicker-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.es.min.js"></script>
    <!--Select2 -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <!--lightbox-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.1.1/ekko-lightbox.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.1.1/ekko-lightbox.js"></script>

    <link rel="icon" href="{{asset('img/ico.png')}}" type="image/x-icon"/>
    <link rel="shortcut icon" href="{{asset('img/ico.png')}}" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="{{asset('css/layout.css')}}"/>
    <script type="text/javascript" src="{{asset('js/propiedades.js')}}"></script>

</head>
<body>
    <div class="row">
        <div class="col-md-12">
            @include('layouts/header')
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 contenido">
            @yield('content')
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 footer">
            @include('layouts/footer')
        </div>
    </div>

@include('modals/modalMapa')
</body>
</html>

