package modelos;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ProveedoresDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public Proveedores validar(String nombreProveedor, String telefonoProveedor, String email){
        Proveedores proveedores = new Proveedores();
        String sql = "select * from Proveedores where nombreProveedor = ? and telefonoProveedor = ? and email = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, nombreProveedor);
            ps.setString(2, telefonoProveedor);
            ps.setString(3, email);
            rs = ps.executeQuery();
            while(rs.next()){
                proveedores.setIdProveedor(rs.getInt("idProveedor"));
                proveedores.setNombreProveedor(rs.getString("nombreProveedor"));
                proveedores.setTelefonoProveedor(rs.getString("telefonoProveedor"));
                proveedores.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return proveedores;
    }
    public int agregar(Proveedores prov){
        String sql = "insert into Proveedores(nombreProveedor, numeroProveedor, email) values(?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prov.getNombreProveedor());
            ps.setString(2, prov.getTelefonoProveedor());
            ps.setString(3, prov.getEmail());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    public Proveedores listarProveedores(){
        Proveedores prov = new Proveedores();
        String sql = "select * from Proveedores where codigoProveedor=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                prov.setNombreProveedor(rs.getString(2));
                prov.setTelefonoProveedor(rs.getString(3));
                prov.setEmail(rs.getString(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return prov;
    }
    public int actualizar(Proveedores prov){
        String sql= "update Proveedores"
                + "set nombreProveedor = ?"
                    + "telefonoProveedor = ?"
                    + "email - ?"
                + "where idProveedor = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prov.getNombreProveedor());
            ps.setString(2, prov.getTelefonoProveedor());
            ps.setString(3, prov.getEmail());
            ps.setInt(4, prov.getIdProveedor());
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    public void eliminar(int id){
        String sql = "delete from Proveedor where idProveedor = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
