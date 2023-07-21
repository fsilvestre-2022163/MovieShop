package modelo;

import java.util.Date;

public class Resena {
    
    private int idResena;
    private Date fechaValoración;
    private int calificacion;
    private String resena;
    private int idUsuario;
    private int idProducto;

    public Resena() {
    }

    public Resena(int idResena, Date fechaValoración, int calificacion, String resena, int idUsuario, int idProducto) {
        this.idResena = idResena;
        this.fechaValoración = fechaValoración;
        this.calificacion = calificacion;
        this.resena = resena;
        this.idUsuario = idUsuario;
        this.idProducto = idProducto;
    }

    public int getIdResena() {
        return idResena;
    }

    public void setIdResena(int idResena) {
        this.idResena = idResena;
    }

    public Date getFechaValoración() {
        return fechaValoración;
    }

    public void setFechaValoración(Date fechaValoración) {
        this.fechaValoración = fechaValoración;
    }

    public int getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }

    public String getResena() {
        return resena;
    }

    public void setResena(String resena) {
        this.resena = resena;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
    
    
    
}
