<%-- 
    Document   : error_propiedad
    Created on : Jun 10, 2015, 5:00:02 PM
    Author     : urtubia @ notNull
--%>

<%@page import="portalinmobiliario.model.Propiedad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="portalinmobiliario.model.PropiedadDal"%>
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
                        <li class="active">
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
                <div class="col-sm-1"></div>
        <div class="well col-sm-10">
            <%
            HttpSession sesion = request.getSession();
            Ejecutivo e = (Ejecutivo) sesion.getAttribute("ejecutivo");            
            %>
            <h1><i class="fa fa-spin fa-cog"></i>&nbsp;Búsqueda de propiedades:</h1>
            <h3>&nbsp;</h3>
                <div  class="row">
                <!--side menu-->
                <div class="list-group col-sm-2">
                    <a href="buscar_propiedad.jsp" class="list-group-item active"><i class="fa fa-search"></i>&nbsp;Buscar propiedades</a>
                    <a href="listar_propiedades.jsp" class="list-group-item"><i class="fa fa-list-ol"></i>&nbsp;Listar propiedades</a>
                    <a href="agregar_propiedad.jsp" class="list-group-item"><i class="fa fa-plus-circle"></i>&nbsp;Agregar propiedades</a>
                    <a href="preguntas.jsp" class="list-group-item"><i class="fa fa-inbox"></i>&nbsp;Responder preguntas</a>
                </div>
                <!--búsqueda-->
                <form action="procesar_propiedad.do" method="POST">               
                <div class="col-sm-8">
                    <div class="form-group">
                        <div class="col-sm-8">
                            <input type="text"
                                name="txt_codigo"
                                class="form-control"
                                id="codigo"
                                placeholder="Código de Propiedad" />
                        </div>
                        <div class="col-sm-2">
                            <button class="btn btn-primary" name = "btn_buscar">
                                <i class="fa fa-search"></i>
                                Buscar
                            </button>
                        </div>
                    </div>
                  </form>
                    <table class="table table-hover" >
                        <tbody>
                        <br>
                        <h1>
                            <center>
                                <i class="fa fa-search"></i>&nbsp;&nbsp;
                                <small><i class="fa fa-times"></i>&nbsp;&nbsp;</small>
                            <i class="fa fa-database"></i>
                            </center>
                        </h1>
                        <div class="alert alert-danger">
                            <i class="fa fa-warning"></i>
                            <strong>Error de Búsqueda:</strong> El código ingresado no se encuentra en la base de datos.
                            <br> Intente ingresarlo nuevamente.
                        </div>
                        </tbody>
                    </table> 
                </div>        
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
                                </a><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">portalinmobiliario_notNull</span> por 
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
