package model;

import include.DatosCuenta;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloDatosCuenta extends conexion {
    public boolean crearDatosCuenta(DatosCuenta datosCuenta){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta= "INSERT INTO datos_cuenta" + "(id_usuario, usuario, password)" + "VALUES(?,?,?)";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,datosCuenta.getId_usuario());
            pst.setString(2,datosCuenta.getUsuario());
            pst.setString(3,datosCuenta.getPassword());

            if (pst.executeUpdate()==1){
                flag=true;
            }

    } catch (Exception ex) {
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

        public ArrayList<DatosCuenta> obtenerDatosCuentas(){
        ArrayList<DatosCuenta> datosCuentas=new ArrayList<DatosCuenta>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_usuario, usuario, password FROM datos_cuenta";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                datosCuentas.add(new DatosCuenta(rs.getInt("id_usuario"),
                rs.getString("usuario"),
                rs.getString("password")));
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
        return datosCuentas;
        }

        public ArrayList<DatosCuenta> obtenerDatosCuenta(int id_usuario){
        ArrayList<DatosCuenta> datoscuenta =new ArrayList<DatosCuenta>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "SELECT id_usuario, usuario, password FROM datos_cuenta WHERE id_usuario=?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1,id_usuario);
            rs = pst.executeQuery();
            while (rs.next()){
                datoscuenta.add(new DatosCuenta(rs.getInt("id_usuario"),
                        rs.getString("usuario"),
                        rs.getString("password")));
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
        return datoscuenta;
        }

        public boolean actualizarDatosCuenta(DatosCuenta datosCuenta){
        PreparedStatement pst = null;
        boolean flag =false;
        try {
            String consulta = "UPDATE datos_cuenta set id_usuario = ?, usuario =?, password =? WHERE id_usuario =?";
            pst=getConection().prepareStatement(consulta);
            pst.setInt(1,datosCuenta.getId_usuario());
            pst.setString(2,datosCuenta.getUsuario());
            pst.setString(3,datosCuenta.getPassword());
            pst.setInt(4,datosCuenta.getId_usuario());

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
        public boolean borrarDatosCuenta(int id_usuario){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta ="DELETE FROM datos_cuenta WHERE id_usuario=?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,id_usuario);

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
