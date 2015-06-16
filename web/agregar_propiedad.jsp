<%-- 
    Document   : agregar_propiedad
    Created on : Jun 11, 2015, 4:35:59 PM
    Author     : urtubia @ notNull
--%>

<%@page import="portalinmobiliario.model.PropiedadDal"%>
<%@page import="portalinmobiliario.model.ComunaDal"%>
<%@page import="portalinmobiliario.model.Comuna"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agregar Propiedad</title>
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
        
        <div class="col-sm-1"></div>
        
        <div class="well col-sm-10">
            <h1><i class="fa fa-spin fa-cog"></i>&nbsp;Ingreso de nueva propiedad:</h1>
            <h3>&nbsp;</h3>
            
            <div  class="row">
                <!--side menu-->
                <div class="list-group col-sm-2">
                    <a href="buscar_propiedad.jsp" class="list-group-item"><i class="fa fa-search"></i>&nbsp;Buscar propiedades</a>
                    <a href="listar_propiedades.jsp" class="list-group-item"><i class="fa fa-list-ol"></i>&nbsp;Listar propiedades</a>
                    <a href="agregar_propiedad.jsp" class="list-group-item active"><i class="fa fa-plus-circle"></i>&nbsp;Agregar propiedades</a>
                    <a href="preguntas.jsp" class="list-group-item"><i class="fa fa-inbox"></i>&nbsp;Responder preguntas</a>
                </div>
                <div class="col-sm-10">
                    <form action="ingreso_propiedad.do" method="post">
                        <table class="table table-hover">
                            <%
                                PropiedadDal propiedadDal = new PropiedadDal();
                                int codigo = propiedadDal.countPropiedad() + 1;
                            %>
                            <tr>
                                <td class="col-sm-2">
                                    <i class="fa fa-list-ol"></i>
                                    &nbsp;Codigo Propiedad 		
                                </td>				
                                <td class="col-sm-5">
                                    <input type="text" 
                                           name="txt_codigo" 
                                           value="<%=codigo%>" 
                                           size="5" 
                                           readonly="true" 
                                           class="form-control"/>
                                </td>
                                <td class="col-sm-1"></td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fa fa-home"></i>/
                                    <i class="fa fa-building"></i>
                                    Tipo Propiedad			
                                </td>				
                                <td>
                                    <select name="dll_tipo_propiedad"
                                            class="form-control"
                                            >    
                                        <option value="Casa" 
                                                selected>
                                            Casa
                                        </option>
                                        <option value="Departamento"
                                                >
                                            Departamento
                                        </option>							
                                    </select>
                                </td>
                            </tr>
                            <td>
                                <i class="fa fa-photo"></i>
                                &nbsp;Foto
                            </td>
                            <td>
                                <select name="dll_foto"
                                        class="form-control"
                                        >
                                    <option>casa.png</option>
                                    <option>casa2.jpg</option>
                                    <option>casa3.jpg</option>
                                    <option>casa4.jpg</option>
                                    <option>casa5.jpg</option>
                                    <option>casa6.jpg</option>
                                    <option>casa7.jpg</option>
                                    <option>casa8.jpg</option>
                                    <option>casa9.jpg</option>
                                    <option>casa10.jpg</option>
                                    <option>depto.jpg</option>
                                    <option>depto1.jpg</option>
                                    <option>depto2.jpg</option>
                                    <option>depto3.jpg</option>
                                    <option>depto4.jpg</option>
                                    <option>depto5.jpg</option>
                                    <option>depto6.jpg</option>
                                    <option>depto7.jpg</option>
                                    <option>depto8.jpg</option>
                                    <option>depto9.jpg</option>
                                    <option>depto10.jpg</option>
                                </select>
                            </td>
                            <tr>
                                <td>
                                    <i class="fa fa-map-marker"></i>
                                    &nbsp;Comuna
                                </td>
                                <td>                              
                                 <select name = "dll_comunas"
                                         class="form-control"
                                         >
                                    <%
                                    //Instanciamos la Clase ComunaDal, la cual tiene la consulta SQL
                                    ComunaDal comunaDal = new ComunaDal();
                                    //Se crea el ArrayList de comuna y la igualamos con la que esta en la BD
                                    ArrayList<Comuna> listasComunas = comunaDal.listaComuna();
                                    //Despues se le da al DL los valores de las comunas
                                    for(Comuna c : listasComunas)
                                    {      
                                    %>
                                     <option value = "<%=c.getIdComuna()%>"><%=c.getNombreComuna()%></option>                              
                                     <%                                  
                                    }
                                     %>
                                </select>  
                                </td>														
                            </tr>
                            <tr>
                                <td>
                                    <i class="fa fa-th"></i>
                                    &nbsp;Metros Construidos
                                </td>
                                <td>
                                    <input type="number" 
                                           name="txt_metros_construidos" 
                                           value="1" size="8"
                                           maxlength="8" 
                                           class="form-control"
                                           required
                                           >
                                </td>										
                            </tr>
                            <tr>
                                <td>
                                    <i class="fa fa-square-o"></i>
                                    &nbsp;Metros Totales
                                </td>
                                <td>
                                    <input class="form-control"
                                           type="number"  
                                           name="txt_metros_total" 
                                           value="1" 
                                           size="8" 
                                           maxlength="8"
                                           value="1"
                                           required
                                           >
                                </td>
                            </tr>
                            <tr>
                                 <td>
                                     <i class="fa fa-bed"></i>
                                     &nbsp;Dormitorios
                                 </td>
                                 <td>
                                    <input name="sp_dormitorios"
                                           class="form-control"
                                           type="number" 
                                           min="1" max="10" 
                                           step="1" value="1" 
                                           size="6" 
                                           maxlength="2"
                                           onkeyUp="return ValNumero(this);"
                                           >
                                 </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fa fa-tint"></i>
                                    &nbsp;Baños
                                </td>
                                <td>
                                    <input class="form-control"
                                           type="number" 
                                           min = "1" max = "10"   
                                           step="1"  value="1" 
                                           size="6" name="sp_banios"
                                           maxlength="2"
                                           onkeyUp="return ValNumero(this);">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fa fa-usd"></i>
                                    &nbsp;Valor UF
                                </td>
                                <td>
                                    <input type="number"
                                           class="form-control"
                                           name="txt_precio_uf"
                                           min = "1"
                                           value="1" 
                                           size="15"
                                           maxlength="8"
                                           required=""
                                           >
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fa fa-newspaper-o"></i>
                                    &nbsp;Descripcion
                                </td>
                                <td>
                                    <textarea class="form-control"
                                            name="txt_descripcion" 
                                            value="" 
                                            cols="" 
                                            rows="10"
                                            maxlength="255"
                                            required 
                                            >Ingrese detalles propiedad.
                                    </textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input class="btn 
                                            btn-block
                                            btn-primary" 
                                           type="submit" 
                                           value="Crear Propiedad" 
                                           name="btn_enviar"
                                           >
                                </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                        </table>
                    </form>
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
