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
public class Pregunta {
    //Class fields.
    private String nombreCliente;
    private String pregunta;
    private String email;
    private int telefonoContacto;
    
    //Class constructors.

    public Pregunta(String nombreCliente, String pregunta, String email, int telefonoContacto) {
        this.nombreCliente = nombreCliente;
        this.pregunta = pregunta;
        this.email = email;
        this.telefonoContacto = telefonoContacto;
    }

    public Pregunta() {
        this.nombreCliente = "no asignado";
        this.pregunta = "no asignado";
        this.email = "no asignado";
        this.telefonoContacto = 0;
    }

    //Class encapsulation methods.
    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTelefonoContacto() {
        return telefonoContacto;
    }

    public void setTelefonoContacto(int telefonoContacto) {
        this.telefonoContacto = telefonoContacto;
    }
    
    //Custom methods:
    
}
