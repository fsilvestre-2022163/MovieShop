package modelos;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CestaDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    
// Listar
    public List listar(){
        String sql="Select * from Cesta";
        List<Cesta> listaEmpleado=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Cesta c=new Cesta();
                c.setIdCesta(rs.getInt(1));
                c.setCantidad(rs.getInt(2));
                c.setFechaProducto(rs.getDate(3));
                c.setSubTotal(rs.getDouble(4));
                c.setSubTotal(rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaEmpleado;
    }   
    
// Agregar
    public int Agregar( Cesta c){
        String sql="insert into Cesta(idCesta, cantidad, fechaProducto, subtotal, idUsuario,) values (?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, c.getIdCesta());
            ps.setInt(2, c.getCantidad());
            ps.setDate(3,c.getFechaProducto());
            ps.setDouble(4, c.getSubTotal());
            ps.setInt(5, c.getIdUsuario());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();        
        }
        return resp;
    }
    
// Listar Por Id
    public Cesta listarIdProducto(int id){
        //instanciar objeto producto
        Cesta c=new Cesta();
        String sql="select * from Cesta where idCesta="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                c.setCantidad(rs.getInt(2));
                c.setFechaProducto(rs.getDate(3));
                c.setSubTotal(rs.getDouble(4));
                c.setIdUsuario(rs.getInt(5));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return c;
    }
    
// Actualizar
    public int actualizar(Cesta c){
        String sql="Update Cesta set cantidad=?, fechaProducto=?, subtotal=?, idUsuario=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, c.getCantidad());
            ps.setDate(2, c.getFechaProducto());
            ps.setDouble(3, c.getSubTotal());
            ps.setInt(4, c.getIdUsuario());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
// Eliminar
    public void eliminar(int id){
        String sql="delete from Cesta where idCesta="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();        
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
