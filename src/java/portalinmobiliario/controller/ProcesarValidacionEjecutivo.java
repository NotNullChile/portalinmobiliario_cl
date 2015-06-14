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
import portalinmobiliario.model.Conexion;
import portalinmobiliario.model.Ejecutivo;
import portalinmobiliario.model.EjecutivoDal;

/**
 *
 * @author Ricardo
 */
public class ProcesarValidacionEjecutivo extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            //Instancia de la clase
            EjecutivoDal ej = new EjecutivoDal();         
            //Se captura los datos del JSP
            String username = request.getParameter("txt_username");
            String password = request.getParameter("txt_password");
            Ejecutivo e = new Ejecutivo();
            e.setAlias(username);
            e.setClave(password);
            e.getNombreEjecutivo();
            ej.EjecutivoDal();
            e = ej.validarUserEjecutivo(e);
            // Si todo esta correcto creará la session ejecutivo, sino redirige a una pagina de error.
            if (e.getNombreEjecutivo() != "")             
            {   
                request.getSession().setAttribute("ejecutivo", e);
                request.getRequestDispatcher("intranet.jsp").forward(request, response);
            }
            else
            {   
                request.getRequestDispatcher("error_user.jsp").forward(request, response);
            }
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
