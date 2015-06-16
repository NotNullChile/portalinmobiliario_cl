<%-- 
    Document   : contacto
    Created on : Jun 10, 2015, 5:01:00 PM
    Author     : urtubia @ notNull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contacto</title>
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
        <script language="javascript" type="text/javascript">
            function Solo_Numerico(variable)
            {
                Numer=parseInt(variable);
                if (isNaN(Numer))
                {
                    return "";
                }
                    return Numer;
            }
            
            function ValNumero(Control)
            {
                Control.value=Solo_Numerico(Control.value);
            }
        </script>
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
                background-image: url(images/bg3.jpg);
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
                        <li class="active">
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
                        <li>
                            <a href="about.jsp">
                                <i class="fa fa-code"></i>
                                &nbsp; by not-null.cl
                            </a>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
        <h1></h1>
        <!--Formulario de ingreso de consultas-->      
        <div class="container well">
            <h1><i class="fa fa-comments"></i> &nbsp;¿Tienes preguntas? Nuestros ejecutivos te contactarán a la brevedad:</h1>
            <hr>
            <form class="form-horizontal" role="form" method="post" action = "procesar_pregunta.do">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nombre">
                        <i class="fa fa-user"></i>
                    </label>
                    <div class="col-sm-10">
                        <input type="text"
                            name="txt_nombre"
                            class="form-control"
                            id="nombre"                           
                            placeholder="Nombre de Contacto"
                            required />
                    </div>
                    <label class="control-label col-sm-2" for="email">
                        <i class="fa fa-envelope"></i>
                    </label>
                    <div class="col-sm-10">
                        <input type="email" 
                            class="form-control" 
                            id="email" 
                            name="txt_email" 
                            placeholder="Escriba su email"
                            required />
                    </div>
                    <label class="control-label col-sm-2" for="phone">
                        <i class="fa fa-phone"></i>
                    </label>
                    <div class="col-sm-10">
                        <input type="tel" 
                            class="form-control" 
                            id="phone" 
                            name="txt_phone" 
                            placeholder="Escriba su número Telefónico"
                            required 
                            onkeyUp="return ValNumero(this);"
                            />
                    </div>
                    <label class="control-label col-sm-2" for="pregunta">
                        <i class="fa fa-edit"></i>
                    </label>
                    <div class="col-sm-10">
                        <textarea name="txt_pregunta" 
                            id="pregunta"
                            value="" 
                            cols="" 
                            rows="3" 
                            
                            class="form-control"
                            required />
                        </textarea>
                    </div>
                    <label class="control-label col-sm-2" for="enviar">
                        <i class="fa fa-check"></i>
                    </label>
                    <div class="col-sm-10">
                        <button type="submit" 
                                class="btn btn-success" 
                                name="btn_enviar">Enviar</button>
                    </div>
                </div>
            </form>
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