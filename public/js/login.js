loginJs = {
	init:function(){
		this.login();
	},
	login:function(){
		$("#btn-loggin").click(function(){
			data = $("form#login").serialize();
				$.ajax({
				type: "POST",
				url: 'admin/iniciar_sesion',
				data:data,
			}).done(function(data) {
				console.log(data);
				if(data.estatus == 200){
					location.href = "admin/listPropiedades";
				}
				else{
					toastr["error"](data.errors)
				}
			}).fail(function(data) {
			}).always(function() {				
			});
		})
	}

}

