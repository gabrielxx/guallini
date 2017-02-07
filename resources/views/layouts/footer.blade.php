<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 contentFooter">
	<div class="row">
		<div class="col-md-4 colFooter">
			<div class="col-md-12 titleFooter">
				PROPIEDADES
			</div>
			<div class="col-md-11 list-group">
				<a href="#" class="list-group-item">
					<span>Beccar</span>
					<span class="badge">15</span>
				</a>
				<a href="#" class="list-group-item">
					<span>Olivos</span>
					<span class="badge">80</span>
				</a>
				<a href="#" class="list-group-item">
					<span>San Fernando</span>
					<span class="badge">10</span>
				</a>
				<a href="#" class="list-group-item">
					<span>Tigre</span>
					<span class="badge">8</span>
				</a>
				<a href="#" class="list-group-item">
					<span>Virreyes</span>
					<span class="badge">23</span>
				</a>
			</div>
		</div>
<div class="col-md-4 colFooter">
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
				<img src="https://img.clipartfest.com/173aea471f8f1d8e5ca136466647f06f_0b7753270e697519ee9e295288925d-facebook-clipart-transparent-background_1000-1000.png" width="30px">
			</a>
			<a href="http://twitter.com/@gualliniprop">
				<img src="http://www.freeiconspng.com/uploads/twitter-icon-9.png"  width="34px">
			</a>
			<a href="#">
				<img src="http://www.noidentity.es/images/2w6i53d.png" width="34px">
			</a>
			<a href="#">
				<img src="http://www.freeiconspng.com/uploads/rss-feed-icon-png-22.png" width="30px">
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
	})
</script>