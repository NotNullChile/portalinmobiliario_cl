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
import portalinmobiliario.model.Pregunta;
import portalinmobiliario.model.PreguntaDal;

/**
 *
 * @author Ricardo
 */
public class ProcesarPregunta extends HttpServlet {

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
            //Inicializamos la conexion a la DB
            PreguntaDal preguntaDal = new PreguntaDal();
            //Capturamos los valores del JSP
            String nombre   = request.getParameter("txt_nombre");
            String email    = request.getParameter("txt_email");
            int phone       = Integer.parseInt(request.getParameter("txt_phone"));
            String pregunta = request.getParameter("txt_pregunta");
            Pregunta p = new Pregunta(nombre, pregunta, email, phone);
            //Nos Conectamos a la BD
            preguntaDal.conexion();
            if (nombre.trim().length() > 0 && email.trim().length() > 0 
                && phone > 0 && pregunta.trim().length() > 0)
            {                          
                if (preguntaDal.insertPregunta(p) == 1) 
                {
                    //Redirige a la misma pagina
                    request.getRequestDispatcher("contacto.jsp").forward(request, response);
                }
                else
                {
                    //Redirige pagina error
                    out.print("Error");
                }  
            }
            else
            {
                //Redirige pagina error
                 out.print("Error");
            }
        }
        catch(Exception e)
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
