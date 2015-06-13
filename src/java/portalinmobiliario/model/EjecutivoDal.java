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
    
    
    public Ejecutivo validarUserEjecutivo(Ejecutivo ej)
    {
        Ejecutivo ejecutivo = new Ejecutivo();
        try 
        {        
            String sql = "select alias, clave, nombreEjecutivo from ejecutivo where alias = '" + ej.getAlias() + "' and clave = '" + ej.getClave() + "';";
            PreparedStatement ps = conn.prepareStatement(sql);           
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                ejecutivo.setAlias(rs.getString("alias"));
                ejecutivo.setClave(rs.getString("clave"));
                ejecutivo.setNombreEjecutivo(rs.getString("nombreEjecutivo"));
            }
        } 
        catch (Exception e) 
        {
          e.printStackTrace();
        }
     return ejecutivo;
    }

}
