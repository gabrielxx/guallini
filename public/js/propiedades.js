propiedadesJs = {

	init:function(){
		this.buscarPropiedad();
		this.preguntas();
		this.localidades();
		this.empresa();
	},
	buscarPropiedad:function(){
		$("#buscarPropiedad").click(function(){
				data = $("#buscador").serialize(); 
				$.ajax({
				type: "POST",
				url: "buscarPropiedad",
				data:data,
			}).done(function(data) {
				$("div#contentPropiedad").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	preguntas:function(){
		$("#preguntas").click(function(){
				$.ajax({
				type: "GET",
				url: "preguntas",
			}).done(function(data) {
				$("div#contentPropiedad").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	empresa:function(){
		$("#empresa").click(function(){
				$.ajax({
				type: "GET",
				url: "empresa",
			}).done(function(data) {
				$("div#contentPropiedad").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	},
	localidades:function(){
		$(".localidades").click(function(){
			$.ajax({
				type: "POST",
				url: "buscarPropiedad",
				data:{
					localidad : $(this).attr('attr-id'),
					_token: $("input[name='_token']").val()
					},
			}).done(function(data) {
				$("div#contentPropiedad").html(data);
			}).fail(function(data) {
			}).always(function() {				
			});
		});
	}
}