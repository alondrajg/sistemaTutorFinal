package controller;

import include.DatosCuenta;
import model.modeloDatosCuenta;

import java.util.ArrayList;

public class controladorDatosCuenta {
    public boolean agregardatos_cuenta(DatosCuenta datosCuenta){
        modeloDatosCuenta  datosCuenta1 = new modeloDatosCuenta();
        return datosCuenta1.crearDatosCuenta (datosCuenta);
    }

    public ArrayList<DatosCuenta> obtenerDatosCuentas(){
        modeloDatosCuenta datosCuentas = new modeloDatosCuenta();
        return datosCuentas.obtenerDatosCuentas();
    }

    public ArrayList<DatosCuenta> obtenerDatosCuenta(int id_usuario){
        modeloDatosCuenta datosCuenta = new modeloDatosCuenta();
        return datosCuenta.obtenerDatosCuenta(id_usuario);
    }

    public boolean actualizarDatosCuenta(DatosCuenta datosCuenta){
        modeloDatosCuenta datosCuenta1 = new modeloDatosCuenta();
        return datosCuenta1.actualizarDatosCuenta(datosCuenta);
    }

    public boolean eliminarDatosCuenta(int id_usuario){
        modeloDatosCuenta datosCuenta1 = new modeloDatosCuenta();
        return datosCuenta1.borrarDatosCuenta(id_usuario);
    }
    public static void main(String[]args){
        controladorDatosCuenta cdc = new controladorDatosCuenta();
        //System.out.println(cdc.agregardatos_cuenta(new DatosCuenta(1,"alo","psmvmw")));

        //Listar todos los elementos de la tabla
        ArrayList<DatosCuenta> datosCuentas = new ArrayList<DatosCuenta>();
        datosCuentas= cdc.obtenerDatosCuentas();
        for (int a=0; a<datosCuentas.size(); a++){
            System.out.println("id_usuario: " + datosCuentas.get(a).getId_usuario());
            System.out.println("usuario: " + datosCuentas.get(a).getUsuario());
            System.out.println("password: " + datosCuentas.get(a).getPassword());
            System.out.println();
        }

        //Listar un elemento de la tabla por su llave primaria
        ArrayList<DatosCuenta> datosCuenta = new ArrayList<DatosCuenta>();
        datosCuenta = cdc.obtenerDatosCuenta(1);

        for (int b=0; b<datosCuenta.size();b++){
            System.out.println("id_usuario: " + datosCuentas.get(b).getId_usuario());
            System.out.println("usuario: " + datosCuentas.get(b).getUsuario());
            System.out.println("password: " + datosCuentas.get(b).getPassword());
            System.out.println();
        }
        //Modificar un elemento
        //System.out.println(cdc.actualizarDatosCuenta(new DatosCuenta(1,"Admin","popis")));

        //modificar un elemento

        System.out.println(cdc.eliminarDatosCuenta(2));
    }
}
