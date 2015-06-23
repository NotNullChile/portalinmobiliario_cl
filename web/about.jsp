<%-- 
    Document   : about
    Created on : Jun 10, 2015, 5:06:32 PM
    Author     : urtubia @ notNull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>We are not null</title>
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
                background-image: url(images/bg.jpg);
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
                        <a href="propiedades.jsp">
                            <i class="fa fa-building"></i>
                            &nbsp; Propiedades
                        </a>
                    </li>
                    <li>
                        <a href="contacto.jsp">
                            <i class="fa fa-comments"></i>
                            &nbsp; Contacto
                        </a>
                    </li> 
                    <li>
                        <a href="comprobar_sesion.do">
                            <i class="fa fa-lock"></i>
                            &nbsp; Intranet
                        </a>
                    </li> 
                    <li class="active">
                        <a href="about.jsp">
                            <i class="fa fa-code"></i>
                                &nbsp; by not-null.cl
                        </a>
                    </li> 
                </ul>
            </div>
        </div>
    </nav>
        <div class="container well">
            <h1><i class="fa fa-newspaper-o"></i> &nbsp;We are not null</h1>
            <hr>
                <div class="row">
                        <div class="col-sm-6">Ricardo Carrasco</div>
                        <div class="col-sm-6">Randy Urtubia.</div>
                </div>
                    <div class="row">
                        Sitio desarrollado utilizando:
                        <h3>Tecnologías Backend</h3>
                        <ul>Patrón de Arquitectura MVC</ul>
                        <ul>Java Servlets</ul>
                        <ul>Java Beans</ul>
                        <ul>MySQL RDBMS</ul>
                        <ul>Glassfish Server</ul>
                        <ul>GitHub CVS</ul>
                        <br>
                        <h3>Tecnologías Frontend</h3>
                        <ul>HTML5</ul>
                        <ul>Java JSP</ul>
                        <ul>CSS</ul>
                        <ul>Javascript</ul>
                        <ul>Bootstrap</ul>
                        <ul>Font Awesome</ul>
                        <ul>Google Fonts</ul>
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
