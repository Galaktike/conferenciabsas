<%@page import="Modelo.Auditorio"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!--bootstrap-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous"
            />
        <title>Auditorios</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-2">Auditorios - Oradores</h1>
            <a class="btn btn-success" href="Controlador?access=volverIndex">Volver</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRE AUDITORIO</th>
                        <th class="text-center">DIRECCION AUDITORIO</th>
                        <th class="text-center">CONTACTO AUDITORIO</th>
                        <th class="text-center">ORADOR PRESENTE</th>
                        
                    </tr>
                </thead>

                <tbody>
                    <!-- OBTENER LA COLECCION OBJETOS Y LO RECORREMOS CON UN FOREACH -->
                    <%
                        List<Auditorio> listaAuditorio = (List<Auditorio>) request.getAttribute("listaAuditorios");
                        for(Auditorio auditorio: listaAuditorio){
                    %>
                    <tr>
                        <td class="text-center"><%= auditorio.getIdAuditorio() %></td>
                        <td class="text-center"><%= auditorio.getNombreAuditorio() %></td>
                        <td class="text-center"><%= auditorio.getDireccionAuditorio() %></td>
                        <td class="text-center"><%= auditorio.getContactoAuditorio() %></td>                        
                        <td class="text-center"><%= auditorio.getOradorPresente() %></td>
                        
                    </tr>
                   <%
                       }
                   %>
                </tbody>
            </table>

        </div>
    </body>
</html>
