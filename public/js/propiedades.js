propiedadesJs = {

	init:function(variable){
		this.buscarPropiedad();
		this.preguntas();
		this.localidades();
		this.empresa();
		this.propiedades();
		this.urlEmpresa = variable.urlEmpresa;
		this.urlPreguntas = variable.urlPreguntas;
		this.urlPropiedad = variable.urlPropiedad;
	},
	buscarPropiedad:function(){
		$("#buscarPropiedad").click(function(){
				data = $("#buscador").serialize(); 
				$.ajax({
				type: "POST",
				url: propiedadesJs.urlPropiedad,
				data:data,
			}).done(function(data) {
				$("div#panelRender").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	preguntas:function(){
		$("#preguntas").click(function(){
				$.ajax({
				type: "GET",
				url: propiedadesJs.urlPreguntas
			}).done(function(data) {
				$("div#panelRender").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	empresa:function(){
		$("#empresa").click(function(){				
				$.ajax({
				type: "GET",
				url: propiedadesJs.urlEmpresa
			}).done(function(data) {
				$("div#panelRender").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	localidades:function(){
		$(".localidades").click(function(){
			$.ajax({
				type: "POST",
				url: propiedadesJs.urlPropiedad,
				data:{
					localidad : $(this).attr('attr-id'),
					_token: $("input[name='_token']").val()
					},
			}).done(function(data) {
				$("div#panelRender").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	propiedades:function(){
		$("#propiedades").click(function(){
			$.ajax({
				type: "POST",
				url: propiedadesJs.urlPropiedad,
				data:{
					_token: $("input[name='_token']").val()
					},
			}).done(function(data) {
				$("div#panelRender").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	}

}