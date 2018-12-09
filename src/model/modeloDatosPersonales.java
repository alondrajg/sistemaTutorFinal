package model;

import include.DatosPersonales;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloDatosPersonales extends conexion {
    public boolean crearDatosPersonales(DatosPersonales datosPersonales){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "INSERT INTO datos_personales"+"(id_datos, nombre, a_paterno, a_materno, edad, id_tipo, id_usuario)"+"VALUES(?,?,?,?,?,?,?)";
            pst=getConection().prepareStatement(consulta);
            pst.setInt(1,datosPersonales.getId_datos());
            pst.setString(2,datosPersonales.getNombre());
            pst.setString(3,datosPersonales.getA_paterno());
            pst.setString(4,datosPersonales.getA_materno());
            pst.setInt(5,datosPersonales.getEdad());
            pst.setInt(6,datosPersonales.getId_tipo());
            pst.setInt(7,datosPersonales.getId_usuario());
            if (pst.executeUpdate()==1){
                flag=true;
            }
        }
        catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() !=null) getConection().close();
                if (pst !=null) pst.close();
            }
            catch (Exception e){
            }
        }
        return flag;
    }
    public ArrayList<DatosPersonales> obtenerDatosPersonales(){
        ArrayList<DatosPersonales> datosPersonales=new ArrayList<DatosPersonales>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_datos, nombre, a_paterno, a_materno, edad, id_tipo, id_usuario FROM datos_personales";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                datosPersonales.add(new DatosPersonales(rs.getInt("id_datos"),
                        rs.getString("nombre"),
                        rs.getString("a_paterno"),
                        rs.getString("a_materno"),
                        rs.getInt("edad"),
                        rs.getInt("id_tipo"),
                        rs.getInt("id_usuario")));
            }
        } catch (Exception e){
        }finally {

            try {
                if (getConection() !=null)getConection().close();
                if (pst !=null)pst.close();
                if (rs !=null)rs.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        return datosPersonales;
}
    public ArrayList<DatosPersonales> obtenerDatosPersonal(int id_datos){
        ArrayList<DatosPersonales> datosPersonal =new ArrayList<DatosPersonales>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "SELECT id_datos, nombre, a_paterno, a_materno, edad, id_tipo, id_usuario FROM datos_personales WHERE id_datos=?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1,id_datos);
            rs = pst.executeQuery();
            while (rs.next()){
                datosPersonal.add(new DatosPersonales(rs.getInt("id_datos"),
                        rs.getString("nombre"),
                        rs.getString("a_paterno"),
                        rs.getString("a_materno"),
                        rs.getInt("edad"),
                        rs.getInt("id_tipo"),
                        rs.getInt("id_usuario")));
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            try {
                if (getConection() !=null)getConection().close();
                if (pst !=null)pst.close();
                if (rs != null) rs.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        return datosPersonal;
}
    public boolean actualizarDatosPersonales(DatosPersonales datosPersonales){
        PreparedStatement pst = null;
        boolean flag =false;
        try {
            String consulta = "UPDATE datos_personales set id_datos = ?, nombre =?, " +
                    "a_paterno =?, a_materno =?, edad=?, id_tipo=?, id_usuario=? " +
                    "WHERE id_datos = ?";
            pst=getConection().prepareStatement(consulta);
            pst.setInt(1,datosPersonales.getId_datos());
            pst.setString(2,datosPersonales.getNombre());
            pst.setString(3,datosPersonales.getA_paterno());
            pst.setString(4,datosPersonales.getA_materno());
            pst.setInt(5,datosPersonales.getEdad());
            pst.setInt(6,datosPersonales.getId_tipo());
            pst.setInt(7,datosPersonales.getId_usuario());
            pst.setInt(8,datosPersonales.getId_datos());

            if (pst.executeUpdate()==1){
                flag= true;
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }finally {

            try {
                if (getConection()!=null)getConection().close();
                if (pst !=null) pst.close();
            }catch (Exception a){
                System.out.println(a.getMessage());
            }
        }
        return flag;
    }
    public boolean borrarDatosPersonales(int id_datos){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta ="DELETE FROM datos_personales WHERE id_datos=?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,id_datos);

            if (pst.executeUpdate() ==1){
                flag=true;
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }finally {
            try {
                if (getConection() !=null)getConection().close();
                if (pst !=null) pst.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        return flag;
    }
}