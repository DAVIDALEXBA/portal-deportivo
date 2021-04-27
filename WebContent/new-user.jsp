<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Nuevo Usuario</title>
    <jsp:include page="./components/libraries.jsp" />
</head>
<body>
   <jsp:include page="./components/side-menu.jsp" />
    <div class="content-page-container full-reset custom-scroll-containers">
         <jsp:include page="./components/header.jsp" />
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema Convoca Sport <small>Administración de Usuarios</small></h1>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                <li role="presentation"  class="active"><a >Usuarios</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="assets/img/user01.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nuevos usuarios al sistema, debes de llenar todos los campos del siguiente formulario para registrar un usuario
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nuevo usuario</li>
                      <li><a href="list-user.jsp">Listado de usuarios</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <center><h4 style="color:green"  id="estatus"></h4></center>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Registrar un nuevo usuario</div>
                <form autocomplete="off">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <input type="text" class="material-control tooltips-general" placeholder="Nombre" required="" maxlength="70" pattern="[a-zA-ZÃ¡Ã©Ã­Ã³ÃºÃÃÃÃÃÃ±Ã ]{1,70}" data-toggle="tooltip" data-placement="top" title="Escribe el nombre del usuario" name="nombre" id="nombre">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre </label>
                            </div>
                            <div class="group-material">
                                <input type="text" class="material-control tooltips-general" placeholder="Apellidos" required="" maxlength="70" pattern="[a-zA-ZÃ¡Ã©Ã­Ã³ÃºÃÃÃÃÃÃ±Ã ]{1,70}" data-toggle="tooltip" data-placement="top" title="Escribe los apellidos del usuario" name="apellidos" id="apellidos">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Apellidos </label>
                            </div>
                            <div class="group-material">
                                <input type="text" class="material-control tooltips-general" placeholder="Dirección" required="" maxlength="200"  data-toggle="tooltip" data-placement="top" title="Escribe la dirección del usuario" name="direccion" id="direccion">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Dirección </label>
                            </div>
                            <div class="group-material">
                                <input type="number" class="material-control tooltips-general" required="" maxlength="10"  data-toggle="tooltip" data-placement="top" title="Escribe el telefono del usuario" name="telefono" id="telefono">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Telefono </label>
                            </div>
                            <div class="group-material">
                                <input type="email" class="material-control tooltips-general input-check-user" placeholder="Correo de usuario" required="" data-toggle="tooltip" data-placement="top" title="Escribe el correo del usuario" name="correo" id="correo">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Correo</label>
                           </div>
                           <div class="group-material">
                           
                           		<select class="material-control tooltips-general input-check-user" required="" data-toggle="tooltip" data-placement="top" title="Seleccione el rol del usuario" name="rol" id="rol">
                           			<option value="" disabled="" selected="">Tipo de usuario</option>
                           			<option value="ADMINISTRADOR">ADMINISTRADOR</option>
                           			<option value="PARTICIPANTE">PARTICIPANTE</option>
                           			
                           		</select>
                               
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                
                           </div>
                           
                           <div class="group-material">
                                <input type="text" class="material-control tooltips-general input-check-user" placeholder="Nombre de usuario" required="" maxlength="20" pattern="[a-zA-Z0-9Ã¡Ã©Ã­Ã³ÃºÃÃÃÃÃÃ±Ã]{1,20}" data-toggle="tooltip" data-placement="top" title="Escribe un nombre de usuario sin espacios, que servira para iniciar sesión" name="usuario" id="usuario">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Usuario</label>
                           </div>
                            
                            <div class="group-material">
                                <input type="text" class="material-control tooltips-general" placeholder="Contraseña" required="" maxlength="200" data-toggle="tooltip" data-placement="top" title="Genera una contraseña" id="contrasena">
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Contraseña</label>
                                <br><input type="button" onclick="generatePasswordRand(10)" class="tooltips-general" value="generar contraseña"  data-toggle="tooltip" data-placement="top" >
                                
                            </div>
                           
                            <p class="text-center">
                                <button type="reset" class="btn btn-info" style="margin-right: 20px;"><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Limpiar</button>
                                <button type="button" class="btn btn-primary" onclick="insertUser()"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                            </p> 
                       </div>
                   </div>
                </form>
            </div>
        </div>
         <jsp:include page="./components/footer.jsp" />
    </div>
</body>
<script type="text/javascript">
function generatePasswordRand(length,type) {
    switch(type){
        case 'num':
            characters = "0123456789";
            break;
        case 'alf':
            characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
            break;
        case 'rand':
            //FOR ↓
            break;
        default:
            characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            break;
    }
    var pass = "";
    for (i=0; i < length; i++){
        if(type == 'rand'){
            pass += String.fromCharCode((Math.floor((Math.random() * 100)) % 94) + 33);
        }else{
            pass += characters.charAt(Math.floor(Math.random()*characters.length));   
        }
    }
    console.log(pass);
    $("#contrasena").val(pass);
   
	}
	
function insertUser() {
	$(document).ready( function() {
		var nombre = $('#nombre').val();
		var apellidos = $('#apellidos').val();
		var direccion = $('#direccion').val();
		var telefono = $('#telefono').val();
		var correo = $('#correo').val();
		var rol = $('#rol option:selected').text();
		var usuario = $('#usuario').val();
		var contrasena = $('#contrasena').val();
		
		$.ajax({
			url : "http://localhost:8080/proyecto-portal-deportivo_server/UsuarioAction",
			type : "post",
			data : {
				nombre : nombre,
				apellidos : apellidos,
				direccion : direccion,
				telefono : telefono,
				correo : correo,
				rol : rol,
				usuario : usuario,
				contrasena : contrasena,
				accion : "insertar"
			},
			success : function(response) {
				if(response == "true"){
					$('#nombre').val("");
					$('#apellidos').val("");
					$('#direccion').val("");
					$('#telefono').val("");
					$('#correo').val("");
					$('#usuario').val("");
					$('#contrasena').val("");
					$('#rol').val($('#rol > option:first').val());
					$('#estatus').text("Usuario ingresado correctamente ");
					
					setTimeout(function() {
				        $("#estatus").fadeOut(1500);
				    },3000);
				}
			
		}
      });

	});

}

</script>
</html>