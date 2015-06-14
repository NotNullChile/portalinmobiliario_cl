<%-- 
    Document   : modificar_propiedad
    Created on : Jun 11, 2015, 4:36:22 PM
    Author     : urtubia @ notNull
--%>

<%@page import="portalinmobiliario.model.Comuna"%>
<%@page import="portalinmobiliario.model.ComunaDal"%>
<%@page import="portalinmobiliario.model.Propiedad"%>
<%@page import="portalinmobiliario.model.Propiedad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="portalinmobiliario.model.PropiedadDal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2> Modifique datos de la propiedad </h2>
	<br>
        <form action="modificar_propiedad_rick.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Codigo</td>
                        <td><input type="text" name="txt_codigo" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Buscar" name="btn_buscar" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
        <form action="modificar_propiedad.do" method="post">
		<table>
                    <tbody>
                        <%                                   
                        try
                        {   
                            int idPropiedad = 1;                    
                            PropiedadDal propiedadDal = new PropiedadDal();
                            ArrayList<Propiedad> listaPropiedades = null;
                            ComunaDal comunaDal = new ComunaDal();
                            String codigo = request.getParameter("txt_codigo");
                            if(request.getParameter("btn_buscar") != null) 
                            {                                                 
                            idPropiedad = Integer.parseInt(request.getParameter("txt_codigo")); 
                            listaPropiedades = propiedadDal.listaPropiedades(idPropiedad);
                            }
                            for(Propiedad p : listaPropiedades)
                            {   
                               
                        %>
                        <tr> 
                            <td>Trata de ocultarlo por CSS</td>
                            <td><input type="text" name="txt_codigo_evaluar" value="<%=codigo%>" size ="1" /></td>
                        </tr>
                        <tr>
                            <td>Foto</td>     
                            <td>
                                <input type="text" name="txt_foto" value="<%=p.getFoto()%>" readonly="true" size="8"/><br>
                                <select name="dll_fotos">
                                    <option>foto1</option>
                                    <option>poner fotos</option>
                                </select>                      
                            </td>
                        </tr>
			<tr> 
                            <td>Tipo Propiedad</td>
                    
                            <td>
                                <input type="text" name="txt_tipo_propiedad" value="<%=p.getTipoPropiedad()%>" readonly="true" size="8"/><br>
                                <select name="dll_tipo_propiedad">
                                    <option>Departamento</option>
                                    <option>Casa</option>
                                </select>                      
                            </td>
                        </tr>
                        <tr> 
                            <td>Precio UF</td>                    
                            <td>
                                <input type="text" name="txt_precio_uf" value="<%=p.getPrecioUF()%>" size="5" />
                            </td>
                        </tr>
                        <tr> 
                            <td>Comuna</td>
                            <td>
                                <input type="text" name="txt_comuna" value="<%=p.getComuna()%>" size="8" readonly="true" /><br> 
                             <select name = "dll_comunas">
                                <%
                                ArrayList<Comuna> listasComunas = comunaDal.listaComuna();
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
                            <td>Metros Total</td>
                            <td><input type="text" name="txt_metros_total" value="<%=p.getMetrosTotal()%>" size="5" /></td>
                        </tr> 
                        <tr>
                            <td>Metros Construidos</td>
                            <td><input type="text" name="txt_metros_construidos" value="<%=p.getMetrosConstruidos()%>" size="5" /></td>
                        </tr>
                        <tr> 
                            <td>Dormitorios</td>
                            <td><input type="number" min = "1" max = "10" step = "1" name="sp_dormitorios" value="<%=p.getNumeroDormitorios()%>" size="5" /></td>
                        </tr> 
                            <td>Baños</td>
                            <td><input type="number" min = "1" max = "10" step = "1"  name="sp_banios" value="<%=p.getNumeroBanios()%>" size="5" /></td>
                        </tr>
                        <tr> 
                            <td>Descripcion</td>
                            <td><textarea name="txt_descripcion" rows="10" cols="30">
                                    <%=p.getDescripcion()%>
                                </textarea>
                            </td>  
                        </tr>
                        <tr>
                            <td><input type="submit" value="Update" name="btn_update" /></td>
                            <td><input type="submit" value="Delete" name="btn_delete" /></td>
                        </tr>
                    <%
                        }                       
                     }
                     catch(Exception ex)
                     {

                     }
                    %> 	
			</tbody>
		</table>
                     
                       
                            
                        
                       
                          
                        
    </body>
</html>
