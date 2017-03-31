<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>:: Guallini Propiedades :. Propiedades - Iniciar Sesión  </title>
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
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('css/login.css')}}"/>
    <script type="text/javascript" src="{{asset('js/login.js')}}"></script>
</head>
<body>
<div class="row">
	<div class="col-md-4 col-md-offset-4 mr-top contentLogin">
	<div class="com-md-12 text-center">
		<img src="http://www.guallinipropiedades.com/img/logo3.png">
	</div>
    <form class="form-horizontal" role="form" method="POST" action="{{ route('login') }}">
            {{ csrf_field() }}
            <div class="form-group col-md-12">
            <label class="control-label" for="username">Email</label>
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus autocomplete="off"/>
            </div>
                @if ($errors->has('email'))
                    <span class="help-block">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            <div class="form-group col-md-12">
                <label class="control-label" for="password">Password</label>
                <input id="password" type="password" class="form-control" name="password" required>
                </div>
                @if ($errors->has('password'))
                    <span class="help-block">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif            
            <div class="col-md-6 password-option">
        		 <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>Recordar Contraseña    
                    </label>
                </div>
           	</div>
           	<div class="col-md-6 text-right">	
           		<a class="password-reset" href="{{ route('password.request') }}">¿Olvidaste tu contraseña?</a>
            </div>        
            <div class="col-md-12 text-center">
            <br>
                <button type="submit" id="btn-loggin" class="btn btn-danger" style="width: 100%">
                    Entrar
                </button>                
            </div>
        </form>
	</div>
</div>
<script type="text/javascript">
	$(function(){
		$('.form-control').on('focus blur', function (e) {
			$(this).parents('.form-group').toggleClass('focused', (e.type === 'focus' || this.value.length > 0));
		}).trigger('blur');
    });
</script>
</body>
</html>