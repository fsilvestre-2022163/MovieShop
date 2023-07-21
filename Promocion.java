package modelo;

import java.util.Date;

public class Promocion {
    private int idPromocion;
    private int porcentajePromocion;
    private Date fechaInicio;
    private Date fechaFinal;

    public Promocion() {
    }

    public Promocion(int idPromocion, int porcentajePromocion, Date fechaInicio, Date fechaFinal) {
        this.idPromocion = idPromocion;
        this.porcentajePromocion = porcentajePromocion;
        this.fechaInicio = fechaInicio;
        this.fechaFinal = fechaFinal;
    }

    public int getIdPromocion() {
        return idPromocion;
    }

    public void setIdPromocion(int idPromocion) {
        this.idPromocion = idPromocion;
    }

    public int getPorcentajePromocion() {
        return porcentajePromocion;
    }

    public void setPorcentajePromocion(int porcentajePromocion) {
        this.porcentajePromocion = porcentajePromocion;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFinal() {
        return fechaFinal;
    }

    public void setFechaFinal(Date fechaFinal) {
        this.fechaFinal = fechaFinal;
    }
    
    
}
