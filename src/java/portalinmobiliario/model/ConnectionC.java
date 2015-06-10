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

/**
 *
 * @author urtubia @ notNull
 */
public class ConnectionC {
    //connect  
    //SELECT TABLE propiedades WHERE
    //ALTER TABLE propiedades WHERE
    //DELETE TABLE propiedades WHERE    
    //SELECT * FROM TABLE preguntas
    private Connection conn;
    private Statement state;
     public void ConnectionC()
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
    public Connection getConnetionC()
    {
     return conn;   
    }
    public Statement getStatement()
    {
        return state;
    }
    public void closeConnectionC()
    {
        try 
        {
            conn.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
}
