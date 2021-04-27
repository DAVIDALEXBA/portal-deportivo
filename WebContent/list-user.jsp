<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Lista de usuarios</title>
    <jsp:include page="./components/libraries.jsp" />
</head>
<body onload="listarUsers();">
    <jsp:include page="./components/side-menu.jsp" />
    <div class="content-page-container full-reset custom-scroll-containers">
        <jsp:include page="./components/header.jsp" />
        </nav>
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema Convoca Sport <small>Administración Usuarios</small></h1>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
              <li role="presentation"  class="active"><a>Usuarios</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="assets/img/user01.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección donde se encuentra el listado de los usuarios, puedes ver, actualizar y eliminar las cuentas de los usuarios
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                        <li><a href="new-user.jsp">Nuevo usuario</a></li>
                        <li class="active">listado de usuarios</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <h2 class="text-center all-tittles">Lista de administradores</h2>
            <div class="div-table">
                <div class="div-table-row div-table-head">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Nombre de usuario</div>
                    <div class="div-table-cell">Email</div>
                    <div class="div-table-cell">Estado</div>
                    <div class="div-table-cell">Cambiar E.</div>
                    <div class="div-table-cell">Actualizar</div>
                    <div class="div-table-cell">Eliminar</div>
                </div>  
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Nombre de usuario</div>
                    <div class="div-table-cell">Email</div>
                    <div class="div-table-cell">Estado</div>
                    <div class="div-table-cell">
                        <button type="submit" class="btn btn-info tooltips-general" data-toggle="tooltip" data-placement="top" title="Cuenta desactivada, pulsa el botÃ³n para activarla"><i class="zmdi zmdi-swap"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Nombre de usuario</div>
                    <div class="div-table-cell">Email</div>
                    <div class="div-table-cell">Estado</div>
                    <div class="div-table-cell">
                        <button type="submit" class="btn btn-info tooltips-general" data-toggle="tooltip" data-placement="top" title="Cuenta desactivada, pulsa el botÃ³n para activarla"><i class="zmdi zmdi-swap"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Nombre de usuario</div>
                    <div class="div-table-cell">Email</div>
                    <div class="div-table-cell">Estado</div>
                    <div class="div-table-cell">
                        <button type="submit" class="btn btn-info tooltips-general" data-toggle="tooltip" data-placement="top" title="Cuenta desactivada, pulsa el botÃ³n para activarla"><i class="zmdi zmdi-swap"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Nombre de usuario</div>
                    <div class="div-table-cell">Email</div>
                    <div class="div-table-cell">Estado</div>
                    <div class="div-table-cell">
                        <button type="submit" class="btn btn-info tooltips-general" data-toggle="tooltip" data-placement="top" title="Cuenta desactivada, pulsa el botÃ³n para activarla"><i class="zmdi zmdi-swap"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Nombre de usuario</div>
                    <div class="div-table-cell">Email</div>
                    <div class="div-table-cell">Estado</div>
                    <div class="div-table-cell">
                        <button type="submit" class="btn btn-info tooltips-general" data-toggle="tooltip" data-placement="top" title="Cuenta desactivada, pulsa el botÃ³n para activarla"><i class="zmdi zmdi-swap"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                    </div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                </div>
            </div>                  
        </div>
        
        <jsp:include page="./components/footer.jsp" />
</body>
<script type="text/javascript">
function listarUsers() {
	$(document).ready( function() {
		
		
		$.ajax({
			url : "http://localhost:8080/proyecto-portal-deportivo_server/UsuarioAction",
			type : "post",
			data : {
				accion : "listar"
			},
			success : function(response) {
				console.log(JSON.stringify(response));
			
		}
      });

	});
}
</script>
</html>
