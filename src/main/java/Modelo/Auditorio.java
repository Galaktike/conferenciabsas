/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

public class Auditorio {
    private int idAuditorio;
    private String nombreAuditorio;
    private String direccionAuditorio;
    private String contactoAuditorio;
    private String oradorPresente;
    
    
    public int getIdAuditorio(){
        return idAuditorio;
    }
    
    public void setIdAuditorio(int idNuevo){  
        this.idAuditorio = idNuevo;
    }
    
    public String getNombreAuditorio(){
        return nombreAuditorio;
    }
    
    public void setNombreAuditorio(String nombreNuevo){
        this.nombreAuditorio = nombreNuevo;
    }
    
    public String getDireccionAuditorio(){
        return direccionAuditorio;
    }
    
    public void setDireccionAuditorio(String direccionNueva){
        this.direccionAuditorio = direccionNueva;
    }
   
    public String getContactoAuditorio(){
        return contactoAuditorio;
    }
    
    public void setContactoAuditorio(String contactoNuevo){
        this.contactoAuditorio = contactoNuevo;
    }
       
    public String getOradorPresente(){
        return oradorPresente;
    }
    
    public void setOradorPresente(String oradorNuevo){
        this.oradorPresente = oradorNuevo;
    }
    
}
