
package modelo;

public class Producto {
    private int idProducto;
    private String nombreProducto;
    private String genero;
    private String categoria;
    private double precio;
    private String duracion;
    private String sinopsis;
    private Byte portada;
    private int idProveedor;

    public Producto() {
    }

    public Producto(int idProducto, String nombreProducto, String genero, String categoria, double precio, String duracion, String sinopsis, Byte portada, int idProveedor) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.genero = genero;
        this.categoria = categoria;
        this.precio = precio;
        this.duracion = duracion;
        this.sinopsis = sinopsis;
        this.portada = portada;
        this.idProveedor = idProveedor;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public Byte getPortada() {
        return portada;
    }

    public void setPortada(Byte portada) {
        this.portada = portada;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }
    
    
}
