<%-- 
    Document   : agregar_propiedad
    Created on : Jun 11, 2015, 4:35:59 PM
    Author     : urtubia @ notNull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="2ww">
            <table>
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
			<tr>
                            <td>
				Comuna	
                            </td>	
                            <td>
				<select name="dll_nombre_comuna">    
				<option value="1" selected>La Florida</option>
				</select>
                            </td>														
			</tr>
			<tr>
                            <td>
                                Metros Construidos
                            </td>
                            <td>
				<input type="text" name="txt_construidos" value="" size="15">
                            </td>										
			</tr>
			<tr>
                            <td>
                                Metro Total
                            </td>
                            <td>
                                <input type="text" name="txt_total" value="" size="15">
                            </td>
                        </tr>
			<tr>
                             <td>
				Dormitorios
                             </td>
                             <td>
				<input type="number" min="1" max="10" step="1" value="1" size="6" name="spinne_dormitorio">
                             </td>
			</tr>
                        <tr>
                             <td>
				Baños
                             </td>
                             <td>
                                <input type="number" min="1" max="10" step="1" value="1" size="6" name="spinne_banios">
                             </td>
			</tr>
			<tr>
                             <td>
				Valor UF
                             </td>
                             <td>
				<input type="text" name="txt_uf" value="" size="15">
                             </td>
			</tr>
			<tr>
                              <td>
				Descripcion
                              </td>
                              <td>
				<textarea name="txt_descripcion" value="" cols="23" rows="5"></textarea>
                              </td>
			</tr>
			<tr>
                              <td>
                                 <input type="submit" value="Enviar" name="btn_enviar">
                              </td>
                        </tr>
               </table>
        </form>
    </body>
</html>
