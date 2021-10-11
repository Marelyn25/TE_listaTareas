<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%
    ArrayList<Tareas> lista=(ArrayList<Tareas>) session.getAttribute("listatareas");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Tareas</h1>
        <a href="MainController?op=nuevo">Nueva Tarea </a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista!=null){
                for (Tareas item : lista){
               
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTareas() %></td>
                <td><%= item.getPrioridad() %></td>
                
                
                
                <td><input type="checkbox" name="confirmado" checked="true"/> </td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Está seguro de eliminar la Tarea?')">Eliminar</a></td>
            </tr>
            <%
                   }
                }
            %>
        </table>
    </body>
</html>

