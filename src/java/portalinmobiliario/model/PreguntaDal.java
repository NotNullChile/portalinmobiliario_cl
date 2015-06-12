/*

 * portalinmobiliario_notNull por notNull Chile
 * Se distribuye bajo una Licencia Creative Commons
 * Atribucion-NoComercial-SinDerivar 4.0 Internacional.
 * Basada en una obra en https://github.com/NotNullChile/portalinmobiliario_cl.
 */

package portalinmobiliario.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ricardo
 */
public class PreguntaDal 
{
    private Connection conn;
    private Statement state;
    private Pregunta pr = new Pregunta();

    public PreguntaDal() 
    {
    }
    public void conexion()
    {
        try 
        {
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalInmobiliario","root","root");
          state = conn.createStatement();
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    public int insertPregunta(Pregunta p)
    {
        try 
        {
            String insert = "insert into preguntas values(null,'"+ p.getNombreCliente() + "','" + p.getPregunta() + "','" + p.getEmail() + "'," + p.getTelefonoContacto() +");";
           return state.executeUpdate(insert);
        }
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return -1;
    }
    public ArrayList<Pregunta> listaPreguntas(){
        return null;
    }
}
