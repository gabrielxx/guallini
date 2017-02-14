<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 contentFooter">
	<div class="row">
		<div class="col-md-4 colFooter">
			<div class="col-md-12 titleFooter">
				PROPIEDADES
			</div>
			<div class="col-md-11 list-group">
				@foreach($localidades as $row)
					<a href="#" class="list-group-item localidades" attr-id="{{$row->id_localidad}}">
						<span>{{$row->nombre}}</span>
						<span class="badge">{{$row->total}}</span>
					</a>				
				@endforeach
			</div>
		</div>
<div class="col-md-4 colFooter"  id="contacto" >
	<div class="col-md-12 titleFooter">
		CONTACTO
	</div>
	<div class="col-md-11 textFooter">
		<div class="form-group">
			<label class="control-label" for="inputNormal">Nombre</label>
			<input type="text" class="form-control" id="nombre" />
		</div>
		<div class="form-group">
			<label class="control-label" for="inputNormal">Email</label>
			<input type="text" class="form-control" id="email" />
		</div>
		<div class="form-group">
			<label class="control-label" for="inputNormal">Consulta</label>
			<textarea class="form-control" id="consulta"  style="max-height: 40px"></textarea>
		</div>
	</div>
	<div class="col-md-11">
		<button type="button" class="btn btn-danger" style="width: 100%">Enviar</button>
	</div>
</div>
<div class="col-md-4 colFooter">
	<div class="col-md-12 titleFooter">
		MAPA INTERACTIVO
	</div>
	<div class="col-md-12">
		<iframe class="colMap" src="{{url('maps')}}"></iframe>
	</div>
</div>
</div>
<hr>
<div class="row">
	<div class="col-md-3 col-sm-3 colFooter">
		<div class="col-md-12 titleFooter">
			<i class="fa fa-building fa-20" aria-hidden="true"></i>&nbsp;
			OFICINAS
		</div>
		<div class="col-md-12 textFooter">
			Don Orione 1116<br>
			Victoria - San Fernando (1644)<br>
			Buenos Aires<br>
			Argentina
		</div>
	</div>
	<div class="col-md-3 col-sm-3 colFooter">
		<div class="col-md-12 titleFooter">
			<i class="fa fa-mobile fa-20" aria-hidden="true"></i>&nbsp;
			VENTAS
		</div>
		<div class="col-md-12 textFooter">
			Fijo: 4725-0795 <br>
			Fijo: 3221-4106 <br>
			Movil: 11 5 717 1148 <br>
			Movil: 11 5 450 1698 <br>
		</div>
	</div>
	<div class="col-md-3 col-sm-3 colFooter">
		<div class="col-md-12 titleFooter">
			<i class="fa fa-envelope fa-20" aria-hidden="true"></i>&nbsp;
			CORREO ELECTRONICO
		</div>
		<div class="col-md-12 textFooter">
			info@guallinipropiedades.com<br>
			<a href="http://facebook.com/guallinipropiedades">
				<img src="{{asset('img/facebook.png')}}" width="30px">
			</a>
			<a href="http://twitter.com/@gualliniprop">
				<img src="{{asset('img/twitter.png')}}"  width="34px">
			</a>
			<a href="#">
				<img src="{{asset('img/instagram.png')}}" width="34px">
			</a>
			<a href="#">
				<img src="{{asset('img/rss-feed.png')}}" width="30px">
			</a>

		</div>
	</div>
	<div class="col-md-3 col-sm-3">
		<div class="col-md-12 colFooter text-center">
			<img src="http://www.guallinipropiedades.com/img/logo3.png" width="60%" >
		</div>
	</div>
</div>

</div>
<script type="text/javascript">
	$(function(){
		$('.form-control').on('focus blur', function (e) {
			$(this).parents('.form-group').toggleClass('focused', (e.type === 'focus' || this.value.length > 0));
		}).trigger('blur');
		propiedadesJs.init();
	})
</script>
