package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PromocionDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public Promocion validar(int porcentajePromocion, Date fechaInicio, Date fechaFinal){
        Promocion promocion = new Promocion();
        String sql = "select * from Promocion where porcentajePromocion = ?, fechaInicio = ? and fechaFinal =?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, porcentajePromocion);
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            ps.setString(2, dateFormat.format(fechaInicio));
            ps.setString(3, dateFormat.format(fechaFinal));
            rs = ps.executeQuery();  
            while (rs.next()){
                promocion.setIdPromocion(rs.getInt("idPromocion"));
                promocion.setPorcentajePromocion(rs.getInt("porcentajePromocion"));
                promocion.setFechaInicio(rs.getDate("fechaInicio"));
                promocion.setFechaFinal(rs.getDate("fechaFinal"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return promocion;
    }
    
    public int agregar(Promocion prom){
        String sql = "Insert into Promocion (porcentajePromocion, fechaInicio, fechaFinal) values (?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, prom.getPorcentajePromocion());
            ps.setDate(2, new java.sql.Date(prom.getFechaInicio().getTime()));
            ps.setDate(3, new java.sql.Date(prom.getFechaFinal().getTime()));
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
    }
    
    public Promocion listarCodigoPromocion(int id){
        Promocion prom = new Promocion();
        String sql = "Select * from Promocion where idPromocion ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                prom.setPorcentajePromocion(rs.getInt(2));
                prom.setFechaInicio(rs.getDate(3));
                prom.setFechaFinal(rs.getDate(4));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return prom;
    }
    
    public int actualizar(Promocion prom) {
        String sql = "Update Promocion"
                + "set porcentajePromocion = ?, "
                + "fechaInicio = ?, "
                + "fechaFinal = ?"
                + "where idPromocion = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, prom.getPorcentajePromocion());
            ps.setDate(2, new java.sql.Date(prom.getFechaInicio().getTime()));
            ps.setDate(3, new java.sql.Date(prom.getFechaFinal().getTime()));
            ps.setInt(4, prom.getIdPromocion());
            ps.executeQuery();
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
    }
       
    
    public void eliminar(int id){
        String sql = "delete from Promocion where idPromocion = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        
            
    }
}
