/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    Connection c;
    
    //constructor inicializa la propiedad c con el objeto de tipo conection
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver"); //comprobar si esta el driver
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/auditorios","root","");
        }catch(Exception e){
            System.err.println("Upss ha sucedido un problema");
        }
    }
   
    public Connection getConnection(){
        return c;
    }
}
