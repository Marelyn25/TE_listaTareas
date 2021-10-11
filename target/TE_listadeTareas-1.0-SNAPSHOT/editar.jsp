<%@page import="com.emergentes.modelo.Tareas"%>
<%
    Tareas item= (Tareas)request.getAttribute("misTareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0)? "Nueva Tarea" : "Editar Tarea" %></h1>
        
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%=item.getId() %>"/>
        <table>
            <tr>
                <td>Tareas</td>
                <td><input type="text" name="tareas" value="<%= item.getTareas() %>"/></td>
            </tr>
            
            <tr>
                <td>Prioridad</td>
                <td>
                <select name="prioridad" values="<%= item.getPrioridad() %>">
                    <option selected></option>
                    <option  >Alta</option>
                    <option >Media</option>
                    <option >Baja</option>
                </select>
                </td>
            </tr>
            
            <tr>
                <td>Completado: </td>
                <td>
                <input type = "radio" name = "Q1" data-bind="checked:IsChecked, checkedValue: true" > Completado
                <input type = "radio" name = "Q1" value="false"> Pendiente
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Enviar"/></td>
            </tr>
        </table>
        </form>
    </body>
</html>

