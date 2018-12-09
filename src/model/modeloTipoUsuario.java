package model;

import include.TipoUsuario;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloTipoUsuario extends conexion {
    public ArrayList<TipoUsuario> obtenerTipoUsuarios() {
        ArrayList<TipoUsuario> datosTipoUsuarios = new ArrayList<TipoUsuario>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_tipo, nombre_tipo_usuario FROM tipo_usuario";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                datosTipoUsuarios.add(new TipoUsuario(rs.getInt("id_tipo"),
                        rs.getString("nombre_tipo_usuario")));
            }
        } catch (Exception e) {
        } finally {

            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return datosTipoUsuarios;
    }

    public ArrayList<TipoUsuario> obtenerTipoUsuario(int id_tipo) {
        ArrayList<TipoUsuario> datosTipoUsuario = new ArrayList<TipoUsuario>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "SELECT id_tipo, nombre_tipo_usuario FROM tipo_usuario WHERE id_tipo=?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, id_tipo);
            rs = pst.executeQuery();
            while (rs.next()) {
                datosTipoUsuario.add(new TipoUsuario(rs.getInt("id_tipo"),
                        rs.getString("nombre_tipo_usuario")));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return datosTipoUsuario;
    }
}