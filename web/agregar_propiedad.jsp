<%-- 
    Document   : agregar_propiedad
    Created on : Jun 11, 2015, 4:35:59 PM
    Author     : urtubia @ notNull
--%>

<%@page import="portalinmobiliario.model.ComunaDal"%>
<%@page import="portalinmobiliario.model.Comuna"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="ingreso_propiedad.do" method="post">
            <table>
                        <tr>
                            <td>
				Codigo Propiedad 		
                            </td>				
                            <td>
                                <input type="text" name="txt_codigo" value="" size="5" />
                            </td>
			</tr>
                        <tr>
                            <td>
				Tipo Propiedad			
                            </td>				
                            <td>
				<select name="dll_tipo_propiedad">    
                                    <option value="Casa" selected>Casa</option>
                                    <option value="Departamento">Departamento</option>							
                                </select>
                            </td>
			</tr>
                        <td>Foto</td>
                        <td>
                            <select name="dll_foto">
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
                            <td>Comuna</td>
                            <td>                              
                             <select name = "dll_comunas">
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
                                Metros Construidos
                            </td>
                            <td>
				<input type="text" name="txt_metros_construidos" value="" size="10">
                            </td>										
			</tr>
			<tr>
                            <td>
                                Metro Total
                            </td>
                            <td>
                                <input type="text" name="txt_metros_total" value="" size="10">
                            </td>
                        </tr>
			<tr>
                             <td>
				Dormitorios
                             </td>
                             <td>
				<input type="number" min="1" max="10" step="1" value="1" size="6" name="sp_dormitorios">
                             </td>
			</tr>
                        <tr>
                             <td>
				Baños
                             </td>
                             <td>
                                <input type="number" min="1" max="10" step="1" value="1" size="6" name="sp_banios">
                             </td>
			</tr>
			<tr>
                             <td>
				Valor UF
                             </td>
                             <td>
				<input type="text" name="txt_precio_uf" value="" size="15">
                             </td>
			</tr>
			<tr>
                              <td>
				Descripcion
                              </td>
                              <td>
				<textarea name="txt_descripcion" value="" cols="30" rows="10"></textarea>
                              </td>
			</tr>
			<tr>
                              <td>
                                 <input type="submit" value="Crear Propiedad" name="btn_enviar">
                              </td>
                        </tr>
               </table>
        </form>
    </body>
</html>
