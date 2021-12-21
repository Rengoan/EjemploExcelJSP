<%@page isErrorPage="true" %> <!-- indicamos que es un jsp que gestiona errores -->
<%@page import="java.io.*" %> <!-- Para poder usar PrintWriter -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Errores</title>
    </head>
    <body>
        <h1>Gestion de Errores</h1>
        <br/>
        Ocurrio una Excepcion: <%= exception.getMessage() %>
        <br/>
        <textarea cols="30" rows="5">
            <% exception.printStackTrace(new PrintWriter(out)); %>
        </textarea>
    </body>
</html>
