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

public class PropiedadDal
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
    //Metodo que insertará una propiedad
    public int insertPropiedad(Propiedad p)
    {
        try 
        {
           //Primero se conecta a la BD 
           conexion();
           //Consulta que insertara una propiedad
           String insert = "insert into propiedad values('" + p.getCodigoPropiedad() + "','" + p.getFoto() + "'," + p.getPrecioUF() + "," + p.getMetrosConstruidos() + "," + p.getMetrosTotal() + "," + p.getNumeroDormitorios() + "," + p.getNumeroBanios() + ",'" + p.getTipoPropiedad() + "','" + p.getComuna() + "','" + p.getDescripcion() + "');";
           //Esto retornará 1 = "Bien ingresado" y si es cualquier otro numero error 
           return state.executeUpdate(insert);
        }
        catch (SQLException e) 
        {
            return e.getErrorCode();
        }
    }
    //Metodo que creará una lista de propiedades
    public ArrayList<Propiedad> listaPropiedad()
    {       
        try 
        {
            //Primero se crea un ArrayList de propiedades para guardarlas ahí 
            ArrayList <Propiedad> listaPropiedades = new ArrayList<>();
            //Se conecta a la BD
            conexion();
            //Consulta SQL
            String sql = "SELECT p.idPropiedad, p.foto, p.precioUf,"
                    + "p.mtsConstruido, p.mtsTotal,p.numeroCormitorios, "
                    + "p.numeroBaños, p.tipoPropiedad,c.nombreComuna,p.descripcion "
                    + "FROM propiedad p INNER JOIN comuna c on p.idComuna = c.idComuna;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Propiedad p = new Propiedad(); 
                p.setCodigoPropiedad(rs.getInt(1));
                p.setFoto(rs.getString(2));
                p.setPrecioUF(rs.getDouble(3));
                p.setMetrosConstruidos(rs.getDouble(4));
                p.setMetrosTotal(rs.getDouble(5));
                p.setNumeroDormitorios(rs.getInt(6));
                p.setNumeroBanios(rs.getInt(7));
                p.setTipoPropiedad(rs.getString(8));
                p.setComuna(rs.getString(9));
                p.setDescripcion(rs.getString(10));
                listaPropiedades.add(p);
            }
            return listaPropiedades;
        } 
        catch (Exception e) 
        {
            return null;
        }
        
    }
    //Metodo que creará una lista de propiedades segun la comuna
    public ArrayList<Propiedad> listaPropiedad(int idComuna)
    {       
        try 
        {
            ArrayList <Propiedad> listaPropiedades = new ArrayList<>();
            conexion();
            String sql = "SELECT p.idPropiedad, p.foto, p.precioUf,p.mtsConstruido,"
                    + " p.mtsTotal,p.numeroCormitorios,p.numeroBaños, "
                    + "p.tipoPropiedad,c.nombreComuna,p.descripcion "
                    + "FROM propiedad p INNER JOIN comuna c on p.idComuna = c.idComuna "
                    + "WHERE c.idComuna = " + idComuna + ";";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Propiedad p = new Propiedad();
                p.setCodigoPropiedad(rs.getInt(1));
                p.setFoto(rs.getString(2));
                p.setPrecioUF(rs.getDouble(3));
                p.setMetrosConstruidos(rs.getDouble(4));
                p.setMetrosTotal(rs.getDouble(5));
                p.setNumeroDormitorios(rs.getInt(6));
                p.setNumeroBanios(rs.getInt(7));
                p.setTipoPropiedad(rs.getString(8));
                p.setComuna(rs.getString(9));
                p.setDescripcion(rs.getString(10));
                listaPropiedades.add(p);
            }
            return listaPropiedades;
        } 
        catch (Exception e) 
        {
            return null;
        }        
    }
    //Metodo que creará una lista de propiedades segun la idPropiedad
     public ArrayList<Propiedad> listaPropiedades(String idPropiedad)
    {       
        try 
        {
            ArrayList <Propiedad> listaPropiedades = new ArrayList<>();
            conexion();
            String sql = "SELECT p.idPropiedad, p.foto, p.precioUf,p.mtsConstruido,"
                    + " p.mtsTotal,p.numeroCormitorios,p.numeroBaños, "
                    + "p.tipoPropiedad,c.nombreComuna,p.descripcion "
                    + "FROM propiedad p INNER JOIN comuna c on p.idComuna = c.idComuna "
                    + "WHERE p.idPropiedad = '" + idPropiedad + "';";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Propiedad p = new Propiedad();
                p.setCodigoPropiedad(rs.getInt(1));
                p.setFoto(rs.getString(2));
                p.setPrecioUF(rs.getDouble(3));
                p.setMetrosConstruidos(rs.getDouble(4));
                p.setMetrosTotal(rs.getDouble(5));
                p.setNumeroDormitorios(rs.getInt(6));
                p.setNumeroBanios(rs.getInt(7));
                p.setTipoPropiedad(rs.getString(8));
                p.setComuna(rs.getString(9));
                p.setDescripcion(rs.getString(10));
                listaPropiedades.add(p);
            }
            return listaPropiedades;
        } 
        catch (Exception e) 
        {
            return null;
        }        
    }
     //Metodo que retornará la cuenta de propiedades ingresadas
    public int countPropiedad()
    {
      try
      {
            conexion();
            String sql = "SELECT count(idPropiedad) FROM propiedad;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            { 
               return rs.getInt(1);
            }
            
       }
      catch(SQLException e)
      {
          return e.getErrorCode();
      }
      return 0;
    }
    
    //Metodo que  modificará una propiedad
    public int updatePropiedad(Propiedad p)
    {
        try 
        {

        conexion();
        String sql = "UPDATE propiedad "
                    + "SET precioUf = " + p.getPrecioUF() + ", " 
                        + "mtsConstruido = " + p.getMetrosConstruidos() + ", "
                        + "mtsTotal = " + p.getMetrosTotal() + ", "
                        + "numeroCormitorios = "+ p.getNumeroDormitorios() + ", "
                        + "numeroBaños = " + p.getNumeroBanios()+ ", "
                        + "tipopropiedad = '"+ p.getTipoPropiedad() +"', "
                        + "idComuna = '" + p.getComuna() + "', "
                        + "descripcion = '"+ p.getDescripcion() +"' "
                    + "WHERE idPropiedad = " + p.getCodigoPropiedad() +" ; ";
        return state.executeUpdate(sql);                    
        } 
        catch (SQLException e)
        {
            return e.getErrorCode();
        }
    }
    //Metodo que borrará una propiedad
     public int deletePropiedad(Propiedad p)
    {
        try 
        {
        conexion();
        String sql = "DELETE FROM propiedad WHERE idPropiedad = "+ p.getCodigoPropiedad() +";";
        return state.executeUpdate(sql);                    
        } 
        catch (SQLException e)
        {
            return e.getErrorCode();
        }
    }
    //Metodo que devuelve el Objeto Propiedad
    public Propiedad buscarPropiedad(String codigoPropiedad){
        Propiedad p = new Propiedad();
        try 
        {
            conexion();
            String sql = "SELECT p.idPropiedad, "
                                + "p.foto, "
                                + "p.precioUF, "
                                + "p.mtsConstruido, "
                                + "p.mtsTotal, "
                                + "p.numeroCormitorios, "
                                + "p.numeroBaños, "
                                + "p.tipoPropiedad, "
                                + "c.nombreComuna, "
                                + "p.descripcion "
                    + "FROM propiedad p INNER JOIN comuna c "
                        + "ON p.idComuna = c.idComuna "
                    + "WHERE idPropiedad = " + codigoPropiedad + ";";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
            if(rs.first()){
                p.setCodigoPropiedad(rs.getInt("p.idPropiedad"));
                p.setFoto(rs.getString("p.foto"));
                p.setPrecioUF(rs.getDouble("p.precioUF"));
                p.setMetrosConstruidos(rs.getDouble("p.mtsConstruido"));
                p.setMetrosTotal(rs.getDouble("p.mtsTotal"));
                p.setNumeroDormitorios(rs.getInt("p.numeroCormitorios"));
                p.setNumeroBanios(rs.getInt("p.numeroBaños"));
                p.setTipoPropiedad(rs.getString("p.tipoPropiedad"));
                p.setComuna(rs.getString("c.nombrecomuna"));
                p.setDescripcion(rs.getString("p.descripcion"));
            }
        } 
        catch (Exception e) 
        {
            
        }
        return p;
    }
    public int minPropiedad()
    {
      try
      {
            conexion();
            String sql = "SELECT min(idPropiedad) FROM propiedad;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            { 
               return rs.getInt(1);
            }
            conn.close(); 
       }
      catch(SQLException e)
      {
          return e.getErrorCode();
      }
      return 0;
    }
    public int maxPropiedad()
    {
      try
      {
            conexion();
            String sql = "SELECT max(idPropiedad) FROM propiedad;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            { 
               return rs.getInt(1);
            }
           conn.close(); 
       }
      catch(SQLException e)
      {
          return e.getErrorCode();
          
      }
      
      return 0;
      
    }
}
