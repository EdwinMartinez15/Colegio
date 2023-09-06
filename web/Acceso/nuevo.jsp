<%-- 
    Document   : nuevo
    Created on : 27/09/2022, 02:17:23 PM
    Author     : danri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo estudiante</title>

    </head>
    <body>
        <h2>Nuevo estudiante</h2>
        <form action="ColegioController?accion=insertar" method="Post" autocomplete="off">
            <p>
                Nombre:
                <input id="nombre" name="nombre" type="text"/>
            </p>
            <p>
                Cedula:
                <input id="cedula" name="cedula" type="text"/>
            </p>
            <p>
                Edad:
                <input id="edad" name="edad" type="text"/>
            </p>
            <p>
                Contraseña:
                <input id="clave" name="clave" type="text"/>
            </p>
            <button id="guardar" name="guardar" type="submit">Guardar</button>
        </form>
    </body>
</html>
