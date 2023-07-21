
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
//Listar
public List listar(){
    String sql="Select * from Producto";
    List<Producto> listaEmpleado=new ArrayList<>();
    try {
        con=cn.Conexion();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            Producto p=new Producto();
            p.setIdProducto(rs.getInt(1));
            p.setNombreProducto(rs.getString(2));
            p.setGenero(rs.getString(3));
            p.setCategoria(rs.getString(4));
            p.setPrecio(rs.getDouble(5));
            p.setDuracion(rs.getString(6));
            p.setSinopsis(rs.getString(7));
            p.setPortada(rs.getByte(8));
            p.setIdProveedor(rs.getInt(9));
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return listaEmpleado;
    
}


//AGREGAR
public int Agregar(Producto p){
    String sql="insert into Producto(nombreProducto, genero, categoria, precio, duracion, sinopsis, portada, idProveedor) values (?,?,?,?,?,?,?,?)";
    try {
        con=cn.Conexion();
        ps=con.prepareStatement(sql);
        ps.setString(1, p.getNombreProducto());
        ps.setString(2, p.getGenero());
        ps.setString(3, p.getCategoria());
        ps.setDouble(4, p.getPrecio());
        ps.setString(5, p.getDuracion());
        ps.setString(6, p.getSinopsis());
        ps.setByte(7, p.getPortada());
        ps.setInt(8, p.getIdProveedor());
        
        ps.executeUpdate();
        
    } catch (Exception e) {
        e.printStackTrace();        
    }
    return resp;
    }


//Buscar
public Producto listarIdProducto(int id){
    //instanciar objeto producto
    Producto p=new Producto();
    String sql="select * from Producto where idProducto="+id;
    try {
        con=cn.Conexion();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            p.setNombreProducto(rs.getString(2));
            p.setGenero(rs.getString(3));
            p.setCategoria(rs.getString(4));
            p.setPrecio(rs.getDouble(5));
            p.setDuracion(rs.getString(6));
            p.setSinopsis(rs.getString(7));
            p.setPortada(rs.getByte(8));
            p.setIdProveedor(rs.getInt(9));
        }
    }catch(Exception e){
        e.printStackTrace();
    }
    return p;
}

//Editar
public int actualizar(Producto p){
    String sql="Update Producto set nombreProducto=?, genero=?, categoria=?, precio=?, duracion=?, sinopsis=?, portada=?, idProveedor=? where idProducto=?";
    try {
        con=cn.Conexion();
    ps=con.prepareStatement(sql);
    ps.setString(1, p.getNombreProducto());
    ps.setString(2, p.getGenero());
    ps.setString(3, p.getCategoria());
    ps.setDouble(4, p.getPrecio());
    ps.setString(5, p.getDuracion());
    ps.setString(6, p.getSinopsis());
    ps.setByte(7, p.getPortada());
    ps.setInt(8, p.getIdProveedor());
    ps.executeUpdate();
    
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return resp;
}

//ELIMINAR
public void eliminar(int id){
    String sql="delete from Producto where idProducto="+id;
    try {
        con=cn.Conexion();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();
                
    } catch (Exception e) {
        e.printStackTrace();
    }
}



}























