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
public class Propiedad {
    //Class fields.
    private String codigoPropiedad;
    private String tipoPropiedad;
    private double precioUF;
    private String comuna;
    private double metrosConstruidos;
    private double metrosTotal;
    private String descripcion;
    private int numeroDormitorios;
    private int numeroBanios;
    
    //Class constructors.
    public Propiedad(String codigoPropiedad, String tipoPropiedad, double precioUF, String comuna, double metrosConstruidos, double metrosTotal, String descripcion, int numeroDormitorios, int numeroBanios) {
        this.codigoPropiedad = codigoPropiedad;
        this.tipoPropiedad = tipoPropiedad;
        this.precioUF = precioUF;
        this.comuna = comuna;
        this.metrosConstruidos = metrosConstruidos;
        this.metrosTotal = metrosTotal;
        this.descripcion = descripcion;
        this.numeroDormitorios = numeroDormitorios;
        this.numeroBanios = numeroBanios;
    }
    
    public Propiedad() {
        this.codigoPropiedad = "no asignado";
        this.tipoPropiedad = "no asignado";
        this.precioUF = 0.0;
        this.comuna = "no asignado";
        this.metrosConstruidos = 0.0;
        this.metrosTotal = 0.0;
        this.descripcion = "no asignado";
        this.numeroDormitorios =0;
        this.numeroBanios = 0;
    }
    
    //Encapsulation methods:
    public String getCodigoPropiedad() {
        return codigoPropiedad;
    }

    public void setCodigoPropiedad(String codigoPropiedad) {
        this.codigoPropiedad = codigoPropiedad;
    }

    public String getTipoPropiedad() {
        return tipoPropiedad;
    }

    public void setTipoPropiedad(String tipoPropiedad) {
        this.tipoPropiedad = tipoPropiedad;
    }

    public double getPrecioUF() {
        return precioUF;
    }

    public void setPrecioUF(double precioUF) {
        this.precioUF = precioUF;
    }

    public String getComuna() {
        return comuna;
    }

    public void setComuna(String comuna) {
        this.comuna = comuna;
    }

    public double getMetrosConstruidos() {
        return metrosConstruidos;
    }

    public void setMetrosConstruidos(double metrosConstruidos) {
        this.metrosConstruidos = metrosConstruidos;
    }

    public double getMetrosTotal() {
        return metrosTotal;
    }

    public void setMetrosTotal(double metrosTotal) {
        this.metrosTotal = metrosTotal;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getNumeroDormitorios() {
        return numeroDormitorios;
    }

    public void setNumeroDormitorios(int numeroDormitorios) {
        this.numeroDormitorios = numeroDormitorios;
    }

    public int getNumeroBanios() {
        return numeroBanios;
    }

    public void setNumeroBanios(int numeroBanios) {
        this.numeroBanios = numeroBanios;
    }
    
    //Custom methods:
    
}
