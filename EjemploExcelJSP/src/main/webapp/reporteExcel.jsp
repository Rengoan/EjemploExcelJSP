<!-- Delegamos la gestion de las excepciones del JSP a gestionErrores.jsp -->
<%@page errorPage="WEB-INF/gestionErrores.jsp" %>
<!-- Uso de directiva para importar clases en el JSP -->
<%@page import="utils.Conversiones,java.util.Date"%>
<!-- Uso de directiva para especificar el tipo de respuesta -->
<%@page contentType="application/vnd.ms-excel"%>

<!-- Indicamos el nombre del fichero excel y el modo de acceso -->
<%
    String nombreArchivo = "reporte.xls";
    response.setHeader("Content-Disposition", "Attachment;filename="+ nombreArchivo);
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Excel</title>
    </head>
    <body>
        <h1>Reporte Excel</h1>
        <table border="1">
            <tr>
                <th>
                    Curso
                </th>
                <th>
                    Descripcion
                </th>
                <th>
                    Fecha
                </th>
            </tr>
            <tr>
                <td>
                    Fundamentos de java
                </td>
                <td>
                    Aprendemos la sintaxis basica de java
                </td>
                <td>
                    <%=Conversiones.format(new Date())%>
                </td>
                
            </tr>
            <tr>
                <td>
                    Programacion con Java
                </td>
                <td>
                    Pondremos en practica conceptos de POO
                </td>
                <td>
                    <%=Conversiones.format(new Date())%>
                </td>
                
            </tr>
        </table>
    </body>
</html>
