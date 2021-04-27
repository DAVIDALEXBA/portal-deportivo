<!-- 
* 
-->
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
<title>Inicio de sesión</title>
<jsp:include page="./components/libraries.jsp" />
</head>
<body class="full-cover-background"
	style="background-image: url(https://wallpaperaccess.com/full/2946550.jpg);">

	<div class="form-container">
		<p class="text-center" style="margin-top: 17px;">
			<i class="zmdi zmdi-account-circle zmdi-hc-5x"></i>
		</p>
		<h4 class="text-center all-tittles" style="margin-bottom: 30px;">inicia
			sesión con tu cuenta</h4>
			<h4 id="error" style="color:red"></h4><br>
		<form >
			<div class="group-material-login">
				<input type="text" class="material-login-control" required=""
					maxlength="70" id="usuario"> <span
					class="highlight-login"></span> <span class="bar-login"></span> <label><i
					class="zmdi zmdi-account"></i> &nbsp; Nombres</label>
			</div>
			<br>
			<div class="group-material-login">
				<input type="password" class="material-login-control" required=""
					maxlength="70" id="contrasena"> <span
					class="highlight-login"></span> <span class="bar-login"></span> <label><i
					class="zmdi zmdi-lock"></i> &nbsp; Contraseña</label>
			</div>
			<div class="group-material">
				<select class="material-control-login" id="rol">
					<option value="" disabled="" selected="">Tipo de usuario</option>
					<option value="PARTICIPANTE">PARTICIPANTE</option>
					<option value="ADMINISTRADOR">ADMINISTRADOR</option>

				</select>
			</div>
			<button class="btn-login" type="button" onclick="login()" value="ggggg">
				Ingresar al sistema &nbsp; <i class="zmdi zmdi-arrow-right"></i>
			</button>
		</form>
	</div>
	<script type="text/javascript">
		function login() {
			$(document).ready( function() {
				var usuario = $('#usuario').val();
				var contrasena = $('#contrasena').val();
				var rol = $('#rol option:selected').text();
				
				$.ajax({
					url : "http://localhost:8080/proyecto-portal-deportivo_server/LoginAction",
					type : "get",
					data : {
						usuario : usuario,
						contrasena : contrasena,
						rol : rol
					},
					success : function(response) {
						if(response == "false"){
							$("#error").text("Tu usuario o contraseña es incorrecto");
							
						}
						else{
							window.location.replace("http://localhost:8080/proyecto-portal-deportivo/home.jsp");
						}
					
				}
	          });

			});

		}
	</script>

</body>
</html>