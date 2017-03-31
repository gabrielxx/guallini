loginJs = {
	init:function(){
		this:login();
	},
	login:function(){
		$("#btn-loggin").click(function(){
			form = $("form#login").serialize();
			alert(form);
		})
	}

}

