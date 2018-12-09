package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    private String user="alyto";
    private String password="puchis2126";
    private String hostname="localhost";
    private String port="3306";
    private String database="sistematutor";
    private String classname="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://"+hostname+":"+port+"/"+database;
    private Connection con;

    public conexion(){
        try {
            Class.forName(classname);
            con=DriverManager.getConnection(url, user, password);
        }
        catch (ClassNotFoundException e){
            System.err.println(e.getMessage());
        }
        catch (SQLException esql){
            System.err.println(esql.getMessage());
        }
    }
    public Connection getConection(){return con;}
}
