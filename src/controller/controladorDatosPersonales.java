package controller;

import include.DatosPersonales;
import model.modeloDatosPersonales;

import java.util.ArrayList;

public class controladorDatosPersonales {
    public boolean agregardatosPersonales(DatosPersonales datosPersonales){
        modeloDatosPersonales datosPersonales1 = new modeloDatosPersonales();
        return  datosPersonales1.crearDatosPersonales(datosPersonales);
    }
    public ArrayList<DatosPersonales> obtenerDatosPersonales(){
        modeloDatosPersonales datosPersonales = new modeloDatosPersonales();
        return datosPersonales.obtenerDatosPersonales();
    }
    public ArrayList<DatosPersonales> obtenerDatosPersonal(int id_datos){
        modeloDatosPersonales datosPersonal = new modeloDatosPersonales();
        return datosPersonal.obtenerDatosPersonal(id_datos);
    }
    public boolean actualizarDatosPersonales(DatosPersonales datosPersonales){
        modeloDatosPersonales datosPersonales1 = new modeloDatosPersonales();
        return datosPersonales1.actualizarDatosPersonales(datosPersonales);
    }
    public boolean eliminarDatosPersonales(int id_datos){
        modeloDatosPersonales datosPersonales1 = new modeloDatosPersonales();
        return datosPersonales1.borrarDatosPersonales(id_datos);
    }
    public static void main (String[]args){
        controladorDatosPersonales cdp= new controladorDatosPersonales();
        //System.out.println(cdp.agregardatosPersonales(new DatosPersonales(2,"Alondra","Jaimes","Gutierrez",21, 1, 1)));


        //Listar todos los elementos de una tabla
        /*ArrayList<DatosPersonales> datosPersonales = new ArrayList<DatosPersonales>();
        datosPersonales= cdp.obtenerDatosPersonales();
        for (int a=0; a<datosPersonales.size(); a++){
            System.out.println("id_datos: " + datosPersonales.get(a).getId_datos());
            System.out.println("nombre: " + datosPersonales.get(a).getNombre());
            System.out.println("a_paterno: " + datosPersonales.get(a).getA_paterno());
            System.out.println("a_materno: "+ datosPersonales.get(a).getA_materno());
            System.out.println("edad: "+ datosPersonales.get(a).getEdad());
            System.out.println("id_tipo: "+ datosPersonales.get(a).getId_tipo());
            System.out.println("id_usuario: "+ datosPersonales.get(a).getId_usuario());
            System.out.println();
        }
        //Listar un elemento de la tabla por su llave primaria
        ArrayList<DatosPersonales> datosPersonales1 = new ArrayList<DatosPersonales>();
        datosPersonales1 = cdp.obtenerDatosPersonales();

        for (int b=0; b<datosPersonales.size();b++){
            System.out.println("id_datos: " + datosPersonales.get(b).getId_datos());
            System.out.println("nombre: " + datosPersonales.get(b).getNombre());
            System.out.println("a_paterno: " + datosPersonales.get(b).getA_paterno());
            System.out.println("a_materno: "+datosPersonales.get(b).getA_materno());
            System.out.println("edad: "+datosPersonales.get(b).getEdad());
            System.out.println("id_tipo: "+datosPersonales.get(b).getId_tipo());
            System.out.println("id_usuario: "+datosPersonales.get(b).getId_usuario());
            System.out.println();
        }
        //Modificar un elemento
        System.out.println(cdp.actualizarDatosPersonales(new DatosPersonales(1,"Javier","mendez", "mojica", 6, 1,2)));

        //modificar un elemento

        System.out.println(cdp.eliminarDatosPersonales(2));*/
    }
}
