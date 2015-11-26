package Entidades;

public class Producto {
    private Integer id;
    private String cod;
    private String nombre;
    private Double preUni;

    public Producto() {
    }

    public Producto(Integer id) {
        this.id = id;
    }

    public Producto(Integer id, String cod, String nombre, Double preUni) {
        this.id = id;
        this.cod = cod;
        this.nombre = nombre;
        this.preUni = preUni;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPreUni() {
        return preUni;
    }

    public void setPreUni(Double preUni) {
        this.preUni = preUni;
    }
    
    
}
