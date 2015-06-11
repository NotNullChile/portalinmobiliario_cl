<%-- 
    Document   : preguntas
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
                background-image: url(images/bg.jpg);
                background-position: center center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                background-color: #464646;
            } 
            
        </style>
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
                    <li>
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
                    <li class="active">
                        <a href="preguntas.jsp">
                            <i class="fa fa-inbox"></i>
                            &nbsp; Responder Preguntas
                        </a>
                    </li>  
                    <li>
                        <a href="ingreso_intranet.jsp">
                            <i class="fa fa-lock"></i>
                                &nbsp; Logout
                        </a>
                    </li> 
                </ul>
            </div>
        </div>
    </nav>
        <!--body-->
        <div class="well">
            <%
            HttpSession sesion = request.getSession();
            Ejecutivo e = (Ejecutivo) sesion.getAttribute("ejecutivo");     
            %>
            <h1><i class="fa fa-spin fa-cog"></i>&nbsp;Bienvenido <%=e.getAlias()%></h1>
            <h3>Seleccione una acción:</h3>
            <div  class="row">
                <!--side menu-->
                <div class="list-group col-sm-2">
                    <a href="buscar_propiedad.jsp" class="list-group-item"><i class="fa fa-search"></i>&nbsp;Buscar propiedades</a>
                    <a href="#" class="list-group-item"><i class="fa fa-plus-circle"></i>&nbsp;Agregar propiedades</a>
                    <a href="#" class="list-group-item"><i class="fa fa-sliders"></i>&nbsp;Modificar propiedades</a>
                    <a href="#" class="list-group-item"><i class="fa fa-trash"></i>&nbsp;Eliminar propiedades</a>
                    <a href="preguntas.jsp" class="list-group-item active"><i class="fa fa-inbox"></i>&nbsp;Responder preguntas</a>
                </div>
                <!--inbox-->
                <div class="col-sm-8">
                    <table class="table table-hover" >
                        <thead>
                            <tr class="bg-primary">
                                <td><i class="fa fa-user"></i>&nbsp;Nombre</td>
                                <td><i class="fa fa-question"></i>&nbsp;Pregunta</td>
                                <td><i class="fa fa-envelope"></i>&nbsp;Email</td>
                                <td><i class="fa fa-phone"></i>&nbsp;Fono</td>
                                <td><i class="fa fa-external-link"></i>&nbsp;Contestar</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Pepe</td>
                                <td>¿Qué es servlet?</td>
                                <td>pepe@pension.cl</td>
                                <td>5555555</td>
                                <td>
                                    <button class="btn btn-success">
                                        <i class="fa fa-envelope"></i> email 
                                    </button>
                                    <button class="btn btn-success">
                                        <i class="fa fa-skype"></i> skype
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>Pepe</td>
                                <td>Ce avrán dado quenta ke no era llo zino ke mi ermano jemelo el ke estava con la nami?</td>
                                <td>pepe@pension.cl</td>
                                <td>5555555</td>
                                <td>
                                    <button class="btn btn-success">
                                        <i class="fa fa-envelope"></i> email 
                                    </button>
                                    <button class="btn btn-success">
                                        <i class="fa fa-skype"></i> skype
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>    
            </div>
        </div>
    </body>
</html>
