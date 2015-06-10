/*

 * portalinmobiliario_notNull por notNull Chile
 * Se distribuye bajo una Licencia Creative Commons
 * Atribucion-NoComercial-SinDerivar 4.0 Internacional.
 * Basada en una obra en https://github.com/NotNullChile/portalinmobiliario_cl.
 */

package portalinmobiliario.model;

import java.sql.ResultSet;

/**
 *
 * @author Ricardo
 */
public class EjecutivoDal 
{
    private ResultSet st;
    ConnectionC con = new ConnectionC();
    
    
    public void validarUserEjecutivo(String user)
    {
        String select = "select alias from ejecutivo where alias = '" + user + "';";
        try 
        {
            st = con.getStatement().executeQuery(select);
        } 
        catch (Exception e) 
        {
        }
        
    }
}
