<%-- 
    Document   : propiedades
    Created on : Jun 10, 2015, 5:02:40 PM
    Author     : urtubia @ notNull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Listado de propiedades</title>
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
                        <li class="active">
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

        <div class="container bg-success ">
            <br>
            <div class="col-sm-5">
            <h4>    
            Selecciona la comuna donde buscas casa o departamento:
            </h4>
            </div>
            <div class="col-sm-5">
            <select class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>    
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit" value="Filtrar Resultados" name="btn_comuna">
                    <i class="fa fa-filter"></i> &nbsp; Filtrar Resultados
                </button>
            </div>
            <br>
            <table class="table table-hover" >
                <thead>
                    <tr class="bg-primary">
                        <td><i class="fa fa-photo"></i></td>
                        <td><i class="fa fa-home">/<i class="fa fa-building"></i></i></td>
                        <td><i class="fa fa-usd"></i>&nbsp;UF</td>
                        <td><i class="fa fa-map-marker"></i>&nbsp;Comuna</td>
                        <td><i class="fa fa-square-o"></i>&nbsp;m2 Totales</td>
                        <td><i class="fa fa-th"></i>&nbsp;m2 Construidos</td>
                        <td><i class="fa fa-bed"></i>Dorms.</td>
                        <td><i class="fa fa-tint"></i>Baños</td>
                        <td><i class="fa fa-newspaper-o"></i>&nbsp;Descripción</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><img src="images/casa.png" class="img-thumbnail"></td>
                        <td>Casa</td>
                        <td>1000</td>
                        <td>Santiago Centro</td>
                        <td>100</td>
                        <td>200</td>
                        <td>3</td>
                        <td>2</td>
                        <td>Espaciosa casa en barrio céntrico, estilo clásico. A dos cuadras de metro Santa Ana</td>
                    </tr>
                    <tr>
                        <td><img src="images/depto.jpg" class="img-thumbnail"></td>
                        <td>Departamento</td>
                        <td>3500</td>
                        <td>Providencia</td>
                        <td>80</td>
                        <td>80</td>
                        <td>2</td>
                        <td>1</td>
                        <td>Departamento chico y caro.</td>
                    </tr>
                </tbody>
            </table>
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
