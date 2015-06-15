/*

 * portalinmobiliario_notNull por notNull Chile
 * Se distribuye bajo una Licencia Creative Commons
 * Atribucion-NoComercial-SinDerivar 4.0 Internacional.
 * Basada en una obra en https://github.com/NotNullChile/portalinmobiliario_cl.
 */

package portalinmobiliario.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    //Metodo que inserta una pregunta.
    public int insertPregunta(Pregunta p)
    {
        try 
        {
           conexion();
           String insert = "insert into preguntas values(null,'"+ p.getNombreCliente() + "','" + p.getPregunta() + "','" + p.getEmail() + "'," + p.getTelefonoContacto() +");";
           return state.executeUpdate(insert);
        }
        catch (SQLException e) 
        {
            return e.getErrorCode();
        }
        
    }
    //Metodo que crea una lista de preguntas.
    public ArrayList<Pregunta> listaPreguntas()
    {
        
        try 
        {
            ArrayList <Pregunta> listaPreguntas = new ArrayList<>();
            conexion();
            String sql = "select * from preguntas";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Pregunta p = new Pregunta();
                p.setNombreCliente(rs.getString(2));
                p.setPregunta(rs.getString(3));
                p.setEmail(rs.getString(4));
                p.setTelefonoContacto(rs.getInt(5));
                listaPreguntas.add(p);
            }
            return listaPreguntas;
        } 
        catch (Exception e) 
        {
            return null;
        }
        
    }
}
