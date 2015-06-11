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
public class EjecutivoDal 
{
    private Connection conn;
    private Statement state;
    private Ejecutivo ej = new Ejecutivo();

    public EjecutivoDal() 
    {
    }
    public void EjecutivoDal()
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
    
    
    public boolean validarUserEjecutivo(Ejecutivo ej)
    {
        
        try 
        {        
            String sql = "select alias, clave, nombreEjecutivo  from ejecutivo where alias = '" + ej.getAlias() + "' and clave = '" + ej.getClave() + "';";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } 
        catch (Exception e) 
        {
          e.printStackTrace();
        }
     return false;
    }
    public void validarPasswordEjecutivo(String password)
    {
      try 
        {       
            String sql = "select clave from ejecutivo where clave = '" + password + "';";
          
        } 
        catch (Exception e) 
        {
            
        }
    }
    public void insertEjecutivo(String alias,String clave, String nombre)
    {
        try 
        {
            EjecutivoDal();
            String sql = "insert into ejecutivo values ('11','111','11');"; 
            state.executeUpdate(sql);
            
        } catch (Exception e) 
        {
             e.printStackTrace();
        }
       
    }
}
