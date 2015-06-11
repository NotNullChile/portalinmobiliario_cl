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
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author urtubia @ notNull
 */
public class Conexion {
    //connect  
    //SELECT TABLE propiedades WHERE
    //ALTER TABLE propiedades WHERE
    //DELETE TABLE propiedades WHERE    
    //SELECT * FROM TABLE preguntas
    private Connection conn;
    
     public void Conexion()
    {
       verificarControlador();
       conectarse();
    }
    private void verificarControlador()
    {
         try 
        {
          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Controlador Verificado...");          
        } 
        catch (ClassNotFoundException e)
        {
            System.out.println("Falta Controlador "+ e.getMessage());
        }
    }
    private void conectarse()
    {
        try 
        {
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalInmobiliario","root","root");
            System.out.println("Conectado Correctamente");    
        } 
        catch (SQLException e)
        {
            System.out.println("Error Base de datos: " + e.getMessage());
        }
    }
   public PreparedStatement crearSentencia (String sql)
   {
       try 
       {
           return conn.prepareStatement(sql);
       }
       catch (SQLException e) 
       {
           return null;
       }
   }
}
