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
public class ComunaDal
{
    private Connection conn;
    private Statement state;
    
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
    public ArrayList<Comuna> listaComuna()
    {       
        try 
        {
            ArrayList <Comuna> listaComunas = new ArrayList<>();
            conexion();
            String sql = "select * from comuna order by 2";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Comuna c = new Comuna();
                c.setIdComuna(rs.getInt(1));
                c.setNombreComuna(rs.getString(2));
                listaComunas.add(c);
            }
            return listaComunas;
        } 
        catch (Exception e) 
        {
            return null;
        }      
    }
    public String nombreComuna(int idProp)
    {     
        
        try 
        {
            
            conexion();
            String sql = "SELECT c.nombreComuna  FROM propiedad p INNER JOIN  comuna c on p.idComuna = c.idComuna WHERE p.idPropiedad = " + idProp + ";";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.first())
            {  
                String  nombre = rs.getString(1);
                return  nombre;          
            }
              conn.close();
             
        } 
        catch (SQLException e) 
        {
            return null;
            
        }
       return null;
        
    }
}
