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
                            <a href="ingreso_intranet.jsp">
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
        <h1>Contacto</h1>
        <!--Formulario de ingreso de consultas-->
        Ingresa tus datos en este formulario
        <form method="post">
            <table border="0">
                <tbody>
                    <tr>
                        <td>
                            <input type="text" name="txt_nombre_cliente" value="" size="30" placeholder="Nombre de Contacto">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="txt_email" value="" size="30" placeholder="E-Mail">
                        </td>
                    </tr>
                        <td>
                            <input type="text" name="txt_telefono" value="" size="30" placeholder="Telefono">
                        </td>
                    <tr>
                        <td>                       
                            <textarea name="txt_pregunta" value="" cols="31" rows="5" placeholder="Pregunta"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <input type="submit" value="Enviar" name="btn_enviar">
                        </td>
                    </tr>               
                </tbody>
            </table>
        </form>
    </body>
</html>