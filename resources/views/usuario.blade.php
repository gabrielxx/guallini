@extends('layouts.app2')
@section('content')
</style>
<div class="col-md-10 col-md-offset-1">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-danger" id="panelRender">            
				<div class="panel panel-danger">
					<div class="panel-heading">
					<div class="row">						
						<div class="col-md-6">						
							<h1 class="panel-title">
								<i class="fa fa-building fa-20" aria-hidden="true"></i>
								Usuarios
							</h1>
						</div>
						<div class="col-md-6 text-right">			
						<a href="{{url('admin/register')}}">			
							<button type="button" class="btn btn-success" > Nuevo Usuario </button>
						</a>	
						</div>
					</div>
					</div>
					<div class="panel-body" >
						<table id="data-table" class="display table-bordered" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>Nombre</th>
									<th>Email</th>
								</tr>
							</thead>
							<tbody>
								@foreach($usuarios as $row)
								<tr>
									<td>{{$row->name}}</td>
									<td>{{$row->email}}</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function(){
		TableManageDefault.init();
	})
</script>
@endsection