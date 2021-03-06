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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import portalinmobiliario.model.Propiedad;
import portalinmobiliario.model.PropiedadDal;

/**
 *
 * @author Ricardo
 */
public class IngresoPropiedad extends HttpServlet {

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
            //Instanciamos las clases
            PropiedadDal propiedadDal = new PropiedadDal();
            Propiedad p = new Propiedad();
            //Capturamos los datos del JSP
            p.setCodigoPropiedad(Integer.parseInt(request.getParameter("txt_codigo")));
            p.setFoto(request.getParameter("dll_foto"));
            p.setPrecioUF(Double.parseDouble(request.getParameter("txt_precio_uf")));
            p.setMetrosConstruidos(Double.parseDouble(request.getParameter("txt_metros_construidos")));
            p.setMetrosTotal(Double.parseDouble(request.getParameter("txt_metros_total")));
            p.setNumeroDormitorios(Integer.parseInt(request.getParameter("sp_dormitorios")));
            p.setNumeroBanios(Integer.parseInt(request.getParameter("sp_banios")));
            p.setTipoPropiedad(request.getParameter("dll_tipo_propiedad"));
            p.setComuna(request.getParameter("dll_comunas"));
            p.setDescripcion(request.getParameter("txt_descripcion"));
            //Preguntamos si la inserción es = a 1 creé dicho propiedad
            if (propiedadDal.insertPropiedad(p)  == 1)
            {
                response.sendRedirect("propiedad_creada.jsp");
            }
            else
            {
               out.print("ingreso Bad"); 
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
