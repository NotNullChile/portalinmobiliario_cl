/*

 * portalinmobiliario_notNull por notNull Chile
 * Se distribuye bajo una Licencia Creative Commons
 * Atribucion-NoComercial-SinDerivar 4.0 Internacional.
 * Basada en una obra en https://github.com/NotNullChile/portalinmobiliario_cl.
 */

package portalinmobiliario.model;

/**
 *
 * @author Ricardo
 */
public class Comuna {
    private int idComuna;
    private String nombreComuna;

    public Comuna() 
    {
        idComuna = 0;
        nombreComuna = new String();
    }

    public Comuna(int idComuna, String nombreComuna) {
        this.idComuna = idComuna;
        this.nombreComuna = nombreComuna;
    }

    public int getIdComuna() {
        return idComuna;
    }

    public void setIdComuna(int idComuna) {
        this.idComuna = idComuna;
    }

    public String getNombreComuna() {
        return nombreComuna;
    }

    public void setNombreComuna(String nombreComuna) {
        this.nombreComuna = nombreComuna;
    }
    
    
}
