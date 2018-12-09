package controller;

import include.TipoUsuario;
import model.modeloTipoUsuario;

import java.util.ArrayList;

public class controladorTipoUsuario {
    public ArrayList<TipoUsuario> obtenerTipoUsuarios() {
        modeloTipoUsuario tipoUsuario = new modeloTipoUsuario();
        return tipoUsuario.obtenerTipoUsuarios();
    }

    public ArrayList<TipoUsuario> obtenerTipoUsuario(int id_tipo) {
        modeloTipoUsuario tipoUsuario = new modeloTipoUsuario();
        return tipoUsuario.obtenerTipoUsuario(id_tipo);
        }
        public static void main (String[]args){
        controladorTipoUsuario ctu= new controladorTipoUsuario();

            ArrayList<TipoUsuario> tipoUsuarios = new ArrayList<TipoUsuario>();
            tipoUsuarios= ctu.obtenerTipoUsuarios();
            for (int a=0; a<tipoUsuarios.size(); a++){
                System.out.println("id_tipo: " + tipoUsuarios.get(a).getId_tipo());
                System.out.println("nombre_tipo_usuario: " + tipoUsuarios.get(a).getNombre_tipo_usuario());
                System.out.println();
            }
        }
}
