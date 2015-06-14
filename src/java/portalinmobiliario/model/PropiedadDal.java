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
    public int insertPropiedad(Propiedad p)
    {
        try 
        {
           String insert = "insert into propiedades values(" + p.getCodigoPropiedad() + ",'" + p.getFoto() + "',"            +
                                                               p.getPrecioUF() + "," + p.getMetrosConstruidos() + ","        +
                                                               p.getMetrosTotal() + "," + p.getNumeroDormitorios() + ",'"    + 
                                                               p.getTipoPropiedad() + "'," + p.getComuna() + ",'" + p.getDescripcion() + "');";
           return state.executeUpdate(insert);
        }
        catch (SQLException e) 
        {
            return e.getErrorCode();
        }
    }
    public ArrayList<Propiedad> listaPropiedad()
    {       
        try 
        {
            ArrayList <Propiedad> listaPropiedades = new ArrayList<>();
            conexion();
            String sql = "select p.idPropiedad, p.foto, p.precioUf,"
                    + "p.mtsConstruido, p.mtsTotal,p.numeroCormitorios, "
                    + "p.numeroBaños, p.tipoPropiedad,c.nombreComuna,p.descripcion "
                    + "from propiedad p inner join comuna c on p.idComuna = c.idComuna;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Propiedad p = new Propiedad();             
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
    public ArrayList<Propiedad> listaPropiedad(int idComuna)
    {       
        try 
        {
            ArrayList <Propiedad> listaPropiedades = new ArrayList<>();
            conexion();
            String sql = "select p.idPropiedad, p.foto, p.precioUf,p.mtsConstruido,"
                    + " p.mtsTotal,p.numeroCormitorios,p.numeroBaños, "
                    + "p.tipoPropiedad,c.nombreComuna,p.descripcion "
                    + "from propiedad p inner join comuna c on p.idComuna = c.idComuna "
                    + "where c.idComuna = " + idComuna + ";";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Propiedad p = new Propiedad();             
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
     public ArrayList<Propiedad> listaPropiedades(int idPropiedad)
    {       
        try 
        {
            ArrayList <Propiedad> listaPropiedades = new ArrayList<>();
            conexion();
            String sql = "select p.idPropiedad, p.foto, p.precioUf,p.mtsConstruido,"
                    + " p.mtsTotal,p.numeroCormitorios,p.numeroBaños, "
                    + "p.tipoPropiedad,c.nombreComuna,p.descripcion "
                    + "from propiedad p inner join comuna c on p.idComuna = c.idComuna "
                    + "where p.idPropiedad = " + idPropiedad + ";";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Propiedad p = new Propiedad();             
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
    public int countPropiedad()
    {
      try
      {
            conexion();
            String sql = "select count(idPropiedad) from propiedad;";
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
    public int updatePropiedad(Propiedad p)
    {
        try 
        {

        conexion();
        String sql = "update propiedad set foto = '"+ p.getFoto() +"',precioUf = " + p.getPrecioUF() + ", mtsConstruido = " + p.getMetrosConstruidos() +", mtsTotal = " + p.getMetrosTotal() + ", numeroCormitorios = "+ p.getNumeroDormitorios() + ", numeroBaños = " + p.getNumeroBanios()+ ", tipopropiedad = '"+ p.getTipoPropiedad() +"', idComuna = '" + p.getComuna() + "', descripcion = '"+ p.getDescripcion() +"' where idPropiedad = '" + p.getCodigoPropiedad() +"' ; ";
        return state.executeUpdate(sql);                    
        } 
        catch (SQLException e)
        {
            return e.getErrorCode();
        }
    }
     public int deletePropiedad(Propiedad p)
    {
        try 
        {
        conexion();
        String sql = "delete from propiedad where idPropiedad = '"+ p.getCodigoPropiedad() +"';";
        return state.executeUpdate(sql);                    
        } 
        catch (SQLException e)
        {
            return e.getErrorCode();
        }
    }
}
