<%-- 
    Document   : intranet
    Created on : Jun 10, 2015, 5:00:02 PM
    Author     : urtubia @ notNull
--%>

<%@page import="portalinmobiliario.model.Ejecutivo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Bootstrap-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <!--Font Awesome-->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <!--Google fonts-->
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="images/pi.png">
    </head>
    <body>
        <style>
            html {
                position: relative;
                min-height: 100%;
            }
            h1 {
                font-family: Lobster, Monospace;
            }
            .logotexto {
                font-family: Lobster, Monospace;
            }
            h3 {
                font-family: Raleway, Monospace;
            }
            body {
                background-image: url(images/bg1.jpg);
                background-position: center center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                background-color: #464646;
                margin-bottom: 60px;
            } 
            .footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                /* Set the fixed height of the footer here */
                height: 60px;
                background-color: #000000;
            }
        </style>
        <!--Java servlet sessions and attributes-->
        <%
            HttpSession sesion = request.getSession();
            Ejecutivo e = (Ejecutivo) sesion.getAttribute("ejecutivo");
        %>
        <!--Bootstrap Navigation Bar-->
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand " href="index.jsp">
                        <div class="logotexto">
                            PortalInmobili<i class="fa fa-home"/></i>rio.cl
                        </div>
                    </a>
                </div>
                <div>
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="intranet.jsp">
                                <i class="fa fa-unlock"></i>
                                &nbsp; Home Intranet
                            </a>
                        </li>
                        <li>
                            <a href="buscar_propiedad.jsp">
                                <i class="fa fa-cogs"></i>
                                &nbsp; Administrar Propiedades
                            </a>
                        </li>
                        <li>
                            <a href="preguntas.jsp">
                                <i class="fa fa-inbox"></i>
                                &nbsp; Responder Preguntas
                            </a>
                        </li>  
                        <li>
                            <a href="cerrar_session.do">
                                <i class="fa fa-lock"></i>
                                    &nbsp; Logout
                            </a>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="col-sm-1"></div>
        <div class="well col-sm-10">
            <h1><i class="fa fa-spin fa-cog"></i>&nbsp;Bienvenido <%=e.getNombreEjecutivo()%></h1>
            <h3>Seleccione una acción:</h3>
            <div class="row">
            <div class="list-group col-sm-2">
                <a href="buscar_propiedad.jsp" class="list-group-item"><i class="fa fa-search"></i>&nbsp;Buscar propiedades</a>
                <a href="listar_propiedades.jsp" class="list-group-item"><i class="fa fa-list-ol"></i>&nbsp;Listar propiedades</a>
                <a href="agregar_propiedad.jsp" class="list-group-item"><i class="fa fa-plus-circle"></i>&nbsp;Agregar propiedades</a>
                <a href="preguntas.jsp" class="list-group-item"><i class="fa fa-inbox"></i>&nbsp;Responder preguntas</a>
            </div>
            
            <div class="col-sm-1"></div>
            <a href="buscar_propiedad.jsp" class="btn btn-lg btn-primary col-sm-2 text-left">
                Buscar propiedades,<br>
                Modificar propiedades,<br> 
                Eliminar propiedades.<br><br>
                <i class="fa fa-search"></i>
            </a>
            
            &nbsp;&nbsp;
            <a href="listar_propiedades.jsp" class="btn btn-lg btn-warning col-sm-2">
                Listar propiedades:<br>
                Vea el listado completo<br>
                de propiedades. <br><br>
                <i class="fa fa-list-ol"></i>
            </a>
            &nbsp;&nbsp;
            <a href="agregar_propiedad.jsp" class="btn btn-lg btn-success col-sm-2">
                Agregar nuevas <br>
                propiedades a la base <br>
                de datos.<br><br>
                <i class="fa fa-plus-circle"></i>
            </a>
            &nbsp;&nbsp;
            <a href="preguntas.jsp" class="btn btn-lg btn-info col-sm-2">
                Responder preguntas.<br>
                de los usuarios. <br><br><br>
                <i class="fa fa-inbox"></i>
            </a>
            </div>
        </div>
            
        
        
        
        <footer class="footer">
            <div class="container">
                <!--Creative Commons License-->
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8 text-left">
                        <h6>
                            <small>
                                <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">
                                <img alt="Licencia Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png" />
                                </a><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">portalinmobiliario_notNull</span>por 
                                <a xmlns:cc="http://creativecommons.org/ns#" href="http://www.notnull.cl" property="cc:attributionName" rel="cc:attributionURL">
                                notNull Chile</a> se distribuye bajo una <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"> Licencia Creative
                                    Commons Atribución-NoComercial-SinDerivar 4.0 Internacional</a>.<br /> Basada en una obra en 
                                <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/NotNullChile/portalinmobiliario_cl" rel="dct:source">
                                https://github.com/NotNullChile/portalinmobiliario_cl</a>.
                            </small>
                        </h6>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <!--End of creative Commons License-->
            </div>
        </footer>
    </body>
</html>
