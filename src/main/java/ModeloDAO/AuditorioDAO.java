/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Auditorio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AuditorioDAO {
    Conexion cn = new Conexion(); //generamos un objeto conexion
     Connection con; //lo dejamos vacio para luego inicializarlo, guardaremos un objeto de tipo connection 
     
      PreparedStatement ps; //Statement lo dejamos vacio para inicializarlo con la query
      
      ResultSet rs; //guarda la coleccion de registros
      
      public List listarAuditorios(){
          ArrayList<Auditorio> lista = new ArrayList<>();
          String sql = "SELECT * FROM auditorio"; //todos los registros
          
          try{
              
              con = cn.getConnection(); //inicilizamos 
              ps = con.prepareStatement(sql); //Cargando la consulta
              
              rs = ps.executeQuery(); //guardando el resultado de la consulta
              
              //con un bucle generamos un objeto Auditorio por cada registro y al final lo añadimos a la coleccion lista
              while(rs.next()){
                  Auditorio a = new Auditorio();
                  a.setIdAuditorio(rs.getInt("id")); //rs.getInt("id")le permite obtener el dato entero y getIn que esta asociado en ese registro de la columna del campo id_sede
                  a.setNombreAuditorio(rs.getString("nombre"));
                  a.setDireccionAuditorio(rs.getString("direccion"));
                  a.setContactoAuditorio(rs.getString("contacto"));
                  a.setOradorPresente(rs.getString("orador_presente"));
                  
                  
                  lista.add(a);
              }
              
              
              
          }catch(Exception e){
              
              System.out.println("Upss algo salio mal con la consulta a la base de datos");
          }
          
          return lista;  
      }
}
