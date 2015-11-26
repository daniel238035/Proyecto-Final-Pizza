package Entidades;

import java.sql.Date;

public class Acceso {
    private Integer id;
    private Date fech_in;
    private Date fech_out;
    private String rol;

    public Acceso() {
    }

    public Acceso(Integer id) {
        this.id = id;
    }

    public Acceso(Integer id, Date fech_in, Date fech_out, String rol) {
        this.id = id;
        this.fech_in = fech_in;
        this.fech_out = fech_out;
        this.rol = rol;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFech_in() {
        return fech_in;
    }

    public void setFech_in(Date fech_in) {
        this.fech_in = fech_in;
    }

    public Date getFech_out() {
        return fech_out;
    }

    public void setFech_out(Date fech_out) {
        this.fech_out = fech_out;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
    
}
