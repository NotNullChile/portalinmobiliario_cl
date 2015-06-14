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
 * @author urtubia @ notNull
 */
@WebServlet(name = "ProcesarPropiedad", urlPatterns = {"/procesar_propiedad.do"})
public class ProcesarPropiedad extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
        try  {
            //Busca una propiedad en la base de datos con el código ingresado.             
            PropiedadDal prop_dal = new PropiedadDal();
            String codigoPropiedad = request.getParameter("txt_codigo");
            //Crea una propiedad basada en el retorno de la base de datos.
            
            Propiedad prop = new Propiedad();
            
            prop = prop_dal.buscarPropiedad(codigoPropiedad);
            
            if (prop.getCodigoPropiedad() != "no disponible") {
                //Si se recibe una propiedad válida, se crea el atributo de sesión
                request.getSession().setAttribute("propiedad", prop);
                //...y se muestra la propiedad encontrada.
                Propiedad sample = (Propiedad)request.getSession().getAttribute("propiedad");
                request.getRequestDispatcher("mostrar_propiedad.jsp").forward(request, response);
            }
            else
            {
                //Si no se recibe una propiedad válida, se muestra un JSP de error.
                request.getRequestDispatcher("error_propiedad.jsp").forward(request, response);
            }
        }
        catch (Exception e)
            {
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
