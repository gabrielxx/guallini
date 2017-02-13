propiedadesJs = {

	init:function(){
		this.buscarPropiedad();
		this.preguntas();
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
	}
}