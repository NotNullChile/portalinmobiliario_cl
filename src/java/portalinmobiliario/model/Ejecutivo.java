/*
 * portalinmobiliario_notNull por notNull Chile
 * Se distribuye bajo una Licencia Creative Commons
 * Atribucion-NoComercial-SinDerivar 4.0 Internacional.
 * Basada en una obra en https://github.com/NotNullChile/portalinmobiliario_cl.
 */
package portalinmobiliario.model;

/**
 *
 * @author urtubia @ notNull
 */
public class Ejecutivo {
    //Class fields.
    private String alias;
    private String clave;
    private String nombreEjecutivo;

    //Class constructors.
    public Ejecutivo() {
        this.alias = new String();
        this.clave = new String();
        this.nombreEjecutivo = "";
    }

    public Ejecutivo(String alias, String clave, String nombreEjecutivo) {
        this.alias = alias;
        this.clave = clave;
        this.nombreEjecutivo = nombreEjecutivo;
    }
    
    //Encapsulation methods.

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombreEjecutivo() {
        return nombreEjecutivo;
    }

    public void setNombreEjecutivo(String nombreEjecutivo) {
        this.nombreEjecutivo = nombreEjecutivo;
    }
    
    
    //Custom methods.

    @Override
    public String toString() {
        return "Ejecutivo{" + "alias=" + alias + ", clave=" + clave + ", nombreEjecutivo=" + nombreEjecutivo + '}';
    }
}
