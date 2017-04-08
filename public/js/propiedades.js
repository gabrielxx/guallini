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
	deleteImage:function(url){
		$(".deleteImage").click(function(){
			id = $(this).attr("btn-id");
			swal({
				title: "",
				text: "¿Desea eliminar esta imagen?",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "Aceptar",
				cancelButtonText:"Cancelar",
				closeOnConfirm: false
			},
			function(){
				$.ajax({
					type: "POST",
					url: url,
					data:{
						_token: $("input[name='_token']").val(),
						id:id,
						},
				}).done(function(data) {
					$("#img_"+id).remove();
					swal("Eliminado!", "La imagen de esta propiedad ha sido eliminada exitodamente.", "success");
				}).fail(function(data) {
				}).always(function() {				
				});
				
			});
		});
	},
	addImage:function(url,ruta,eliminarRuta){
		$("#addImage").click(function(){
			var formData = new FormData();
			formData.append('image', $("#image")[0].files[0])
			datos = $("#form").serialize();
			$.ajax({
				type: "POST",
				url: url+'?'+datos,
			    contentType: false,
			    processData: false,
				data:formData
			}).done(function(data) {
				$("#image").val('');
				cont = '<div class="col-md-2 col-sm-3 col-xs-3 text-center" id="img_'+data.id_imagen+'">';
                cont+= '<span title="Eliminar" class="btn btn-danger deleteImage" btn-id="'+data.id_imagen+'">x</span>';
                cont+= '<a href="'+ruta+'/'+data.nombre+'" data-lightbox="roadtrip">';
                cont+= '<img src="'+ruta+'/'+data.nombre+'" class="img-fluid" width="90%" height="100px"></a>';
                cont+= '</div>';
				$(".contImage").append(cont);											
				propiedadesJs.deleteImage(eliminarRuta);
				swal("Nueva imagen!", "Nueva imagen agregada exitodamente.", "success");
			}).fail(function(data) {
				datos = data.responseJSON;
				swal("Error",datos.image, "error");
				
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