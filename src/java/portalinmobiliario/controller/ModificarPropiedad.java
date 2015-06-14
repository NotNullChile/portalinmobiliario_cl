/*

 * portalinmobiliario_notNull por notNull Chile
 * Se distribuye bajo una Licencia Creative Commons
 * Atribucion-NoComercial-SinDerivar 4.0 Internacional.
 * Basada en una obra en https://github.com/NotNullChile/portalinmobiliario_cl.
 */

package portalinmobiliario.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import portalinmobiliario.model.Propiedad;
import portalinmobiliario.model.PropiedadDal;

/**
 *
 * @author Ricardo
 */
@WebServlet(name = "ModificarPropiedad", urlPatterns = {"/modificar_propiedad.do"})
public class ModificarPropiedad extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  
        {
            //Instanciamos las Clases
            PropiedadDal propiedadDal = new PropiedadDal();
            Propiedad p = new Propiedad();
            //Capturamos los valores del JSP
            p.setCodigoPropiedad(request.getParameter("txt_codigo_evaluar"));
            p.setFoto(request.getParameter("dll_fotos"));
            p.setPrecioUF(Double.parseDouble(request.getParameter("txt_precio_uf")));
            p.setMetrosConstruidos(Double.parseDouble(request.getParameter("txt_metros_construidos")));
            p.setMetrosTotal(Double.parseDouble(request.getParameter("txt_metros_total")));
            p.setNumeroDormitorios(Integer.parseInt(request.getParameter("sp_dormitorios")));
            p.setNumeroBanios(Integer.parseInt(request.getParameter("sp_banios")));
            p.setTipoPropiedad(request.getParameter("dll_tipo_propiedad"));
            p.setComuna(request.getParameter("dll_comunas"));
            p.setDescripcion(request.getParameter("txt_descripcion"));
            //Pregunta si la Consulta es = 1 y el button(Update) del JSP es !null modificará los datos
            if (propiedadDal.updatePropiedad(p) == 1 && request.getParameter("btn_update") != null) 
            {
                //Poner pagina de buen update
                //request.getRequestDispatcher("modificar_propiedad").forward(request, response); 
                out.print("Update OK");
            }
            //Si eso no ocurre pregunta si el Button(delete)es precionado borrará el objeto Propiedad
            else if(propiedadDal.deletePropiedad(p) == 1 && request.getParameter("btn_delete") != null)
            {    
                //Poner pagina de buen delete
                out.print("Delete OK");
            }
            else
            {
                out.print("error");
            }
        }
        catch(Exception e)
        {
            out.print(e.getMessage());            
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
