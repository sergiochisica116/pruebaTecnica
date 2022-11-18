<!DOCTYPE html>
<html lang="es" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>CRUD USUARIOS</title>
</head>
<body>
<div class="container">
 <h3>Crud de Usuario</h3>
		 <div class="col-md-23" >  

				   <div class="row" style="height: 70px">
						<div class="col-md-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRAR</button>
						</div>
						<div class="col-md-2">
							<button type="button" data-toggle='modal'  data-target="#id_div_modal_registrar"  class='btn btn-success' style="width: 150px">REGISTRAR</button>
						</div>
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 5%" >Documento</th>
												<th style="width: 25%">Nombre</th>
												<th style="width: 8%">Apellido</th>
												<th style="width: 8%">Fecha Nacimiento</th>
												<th style="width: 8%">Ciudad</th>
												<th style="width: 8%">Correo Electronico</th>
												<th style="width: 8%">Telefono</th>
												<th style="width: 8%">Ocupacion</th>
												<th style="width: 10%">Editar</th>
												<th style="width: 10%">Eliminar</th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>
								</div>	
						</div>
					</div>
		  </div>
  
  	 <div class="modal fade" id="id_div_modal_registrar" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Usuario</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		       
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Usuario</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_documento">Documento</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_documento" name="documento" placeholder="Ingrese el documento" type="number" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el nombre" type="text" maxlength="50"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_apellido">Apellido</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_apellido" name="apellido" placeholder="Ingrese el apellido" type="text" maxlength="50"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fecha">Fecha nacimiento</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_fechaNac" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date" min="1957-12-31" max="2004-12-31"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_ciudad">Ciudad</label>
		                                        <div class="col-lg-3">
													<select id="id_reg_ciudad" name="Ciudad" >
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>	
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_correo">Correo Electronico</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_correo" name="correo" placeholder="Ingrese el correo electronico" type="email"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_telefono">Telefono</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_telefono" name="telefono" placeholder="Ingrese el numero de telefono" type="number" maxlength="10"/>
		                                        </div>
		                                    </div> 
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_ocupacion">Ocupacion</label>
		                                        <div class="col-lg-3">
													 <select id="id_reg_ocupacion" name="ocupacion" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
		 <div class="modal fade" id="id_div_modal_actualizar" >
			<div class="modal-dialog" style="width: 60%">
		
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualizar Usuario</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Usuario</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                               <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_documento">Documento</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_documento" name="documento" placeholder="Ingrese el documento" type="number" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_nombre">Nombre</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_apellido">Apellido</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_apellido" name="apellido" placeholder="Ingrese el apellido" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_fecha">Fecha nacimiento</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_fecha" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date" min="1957-12-31" max="2004-12-31"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_ciudad">Ciudad</label>
		                                        <div class="col-lg-3">
													<select id="id_act_ciudad" name="ciudad" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>	
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_correo">Correo Electronico</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_correo" name="correo" placeholder="Ingrese el correo electronico" type="email"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_telefono">Telefono</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_telefono" name="telefono" placeholder="Ingrese el numero de telefono" type="number" maxlength="10"/>
		                                        </div>
		                                    </div> 
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_ocupacion">Ocupacion</label>
		                                        <div class="col-lg-3">
													 <select id="id_act_ocupacion" name="ocupacion" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">ACTUALIZAR</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </div>

		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>

</div>

<script type="text/javascript">
$.getJSON("listaCiudad", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_ciudad").append("<option value="+item.idCiudad +">"+ item.nombreCiudad +"</option>");
		$("#id_act_ciudad").append("<option value="+item.idCiudad +">"+ item.nombreCiudad +"</option>");
	});
});

$.getJSON("listaOcupacion", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_ocupacion").append("<option value="+item.idOcupacion+">"+ item.nombreOcupacion +"</option>");
		$("#id_act_ocupacion").append("<option value="+item.idOcupacion +">"+ item.nombreOcupacion +"</option>");
	});
});


$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("consultarUsuario",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});


$('#id_reg_ciudad').select2();
$('#id_reg_ocupacion').select2();
$('#id_act_ciudad').select2();
$('#id_act_ocupacion').select2();

function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "documento"},
				{data: "nombre"},
				{data: "apellido"},
				{data: "fechaNacimiento"},
				{data: "ciudad.nombreCiudad"},
				{data: "correo"},
				{data: "telefono"},
				{data: "ocupacion.nombreOcupacion"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.documento + '\',\'' + row.nombre +'\',\'' + row.apellido  +'\',\'' + row.fechaNacimiento + '\',\'' + row.ciudad.idCiudad + '\',\'' +  row.correo + '\',\'' +  row.telefono+ '\',\'' + row.ocupacion.idOcupacion + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.documento + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

function eliminar(user){	
	mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,user);
}

function accionEliminar(user){	
    $.ajax({
          type: "POST",
          url: "eliminarUsuario", 
          data: {"user":user},
          success: function(data){
        	  agregarGrilla(data.lista);
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
     });
}

function editar(documento,nombre,apellido,fechaNacimiento,idCiudad,correo,telefono,idOcupacion){	
	$('#id_act_documento').val(documento);
	$('#id_act_nombre').val(nombre);
	$('#id_act_apellido').val(apellido);
	$('#id_act_fecha').val(fechaNacimiento);
	$('#id_act_ciudad').val(idCiudad);
	$('#id_act_correo').val(correo);
	$('#id_act_telefono').val(telefono);
	$('#id_act_ocupacion').val(idOcupacion);
	$('#id_div_modal_actualizar').modal("show");
}

function limpiarFormulario(){
	$('#id_reg_documento').val('');	
	$('#id_reg_nombre').val('');
	$('#id_reg_apellido').val('');
	$('#id_reg_fecha').val('');
	$('#id_reg_ciudad').val('');
	$('#id_reg_correo').val('');
	$('#id_reg_telefono').val('');
	$('#id_reg_ocupacion').val('');
}

$("#id_btn_registra").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "registrarUsuario", 
          data: $('#id_form_registra').serialize(),
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#id_div_modal_registrar').modal("hide");
        	  	mostrarMensaje(data.mensaje);
        	  limpiarFormulario();
        	  validator.resetForm();
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR); 
          }
        });
        
    }
});

$("#id_btn_actualiza").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "actualizarUsuario", 
          data: $('#id_form_actualiza').serialize(),
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#id_div_modal_actualizar').modal("hide");
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
    }
});



</script>

<!-- VALIDACION -->

<script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
        message: 'El valor es incorrecto',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"documento": {
        		selector : "#id_reg_documento",
                validators: {
                    notEmpty: {
                        message: 'El documento es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El documento es de 6 a 10 caracteres',
                    	min : 6,
                    	max : 10
                    }
                }
            },
            "nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 2 a 50 caracteres',
                    	min : 2,
                    	max : 50
                    }
                }
            },
            "apellido": {
        		selector : '#id_reg_apellido',
                validators: {
                    notEmpty: {
                        message: 'El apellido es obligatorio'
                    },
                    stringLength :{
                    	message:'El apellido es de 2 a 50 caracteres',
                    	min : 2,
                    	max : 50
                    }
                }
            },
            "fechaNacimiento": {
        		selector : '#id_reg_fecha',
                validators: {
                	notEmpty: {
                        message: 'La fecha de nacimiento es obligatoria'
                    },
                }
            },
        	
            "ciudad.idCiudad": {
        		selector : '#id_reg_ciudad',
                validators: {
                	notEmpty: {
                        message: 'La ciudad es un campo obligatorio'
                    },
                }
            },
        	
            "correo": {
        		selector : '#id_reg_correo',
                validators: {
                    notEmpty: {
                        message: 'El correo es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El correo tiene un maximo de 60 caracteres',
                    	max : 60
                    }
                }
            },
            "telefono": {
        		selector : '#id_reg_telefono',
                validators: {
                    notEmpty: {
                        message: 'El telefono es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El telefono es de 10 caracteres',
                    	min : 10,
                    	max : 10
                    }
                }
            },
            "ocupacion.idOcupacion": {
        		selector : '#id_reg_ocupacion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion un campo obligatorio'
                    },
                }
            },
            
        }   
    });
</script>

<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"documento": {
        		selector : "#id_act_documento",
                validators: {
                    notEmpty: {
                        message: 'El documento es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El documento es de 10 caracteres',
                    	min : 6,
                    	max : 10
                    }
                }
            },
            "nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 2 a 50 caracteres',
                    	min : 2,
                    	max : 50
                    }
                }
            },
            "apellido": {
        		selector : '#id_act_apellido',
                validators: {
                    notEmpty: {
                        message: 'El apellido es obligatorio'
                    },
                    stringLength :{
                    	message:'El apellido es de 2 a 50 caracteres',
                    	min : 2,
                    	max : 50
                    }
                }
            },
            "fechaNacimiento": {
        		selector : '#id_act_fecha',
                validators: {
                	notEmpty: {
                        message: 'La fecha de nacimiento es obligatoria'
                    },
                }
            },
        	
            "ciudad.idCiudad": {
        		selector : '#id_act_ciudad',
                validators: {
                	notEmpty: {
                        message: 'La ciudad es un campo obligatorio'
                    },
                }
            },
        	
            "correo": {
        		selector : '#id_act_correo',
                validators: {
                    notEmpty: {
                        message: 'El correo es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El correo tiene un maximo de 60 caracteres',
                    	max : 50
                    }
                }
            },
            "telefono": {
        		selector : '#id_act_telefono',
                validators: {
                    notEmpty: {
                        message: 'El telefono es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El telefono es de 10 caracteres',
                    	min : 10,
                    	max : 10
                    }
                }
            },
            "ocupacion.idOcupacion": {
        		selector : '#id_act_ocupacion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion un campo obligatorio'
                    },
                }
            },
            
        }   
        	
    });
</script>
    
</body>
</html> 