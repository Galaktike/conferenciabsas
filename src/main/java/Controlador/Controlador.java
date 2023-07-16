/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;


import Modelo.Auditorio;
import ModeloDAO.AuditorioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cielo
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acceso = "";
        
        String accion = request.getParameter("access"); //verSedes
        
        //luego de crear Modelo DAO
        AuditorioDAO a = new AuditorioDAO(); //nos permite ejecutar el metodo listaAuditorio, no tiene constructor se genera vacia
        
        List<Auditorio> listaAuditorios = a.listarAuditorios();
        
        if(accion.equalsIgnoreCase("verAuditorios") ){
            acceso = "vistas/verAuditorios.jsp";
            
            request.setAttribute("listaAuditorios",listaAuditorios);        
        }
        
        if(accion.equalsIgnoreCase("comprarTickets") ){
            
            acceso = "vistas/comprarTickets.jsp";
        }
        
        if (accion.equalsIgnoreCase("volverIndex") ){
            
            acceso = "index.jsp";
        }
        
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        
        vista.forward(request, response);
    }

    

}
