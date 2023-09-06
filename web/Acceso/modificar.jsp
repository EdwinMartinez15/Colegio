<%-- 
    Document   : modificar
    Created on : 27/09/2022, 02:17:29 PM
    Author     : danri

            <input id="cedula" name="cedula" type="hidden" value="<c:out value="${colegio.cedula}"/>"/>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar estudiante</title>

    </head>
    <body>
        <h2>Modificar estudiante</h2>
        <form action="ColegioController?accion=actualizar" method="Post" autocomplete="off">
            <p>
                Nombre:
                <input id="nombre" name="nombre" type="text" value="<c:out value="${colegio.nombre}"/>"/>
            </p>
            <p>
                Edad:
                <input id="edad" name="edad" type="text" value="<c:out value="${colegio.edad}"/>"/>
            </p>
            <p>
                Cedula:
                <input id="cedula" name="cedula" type="text" value="<c:out value="${colegio.cedula}"/>"/>
            </p>
            <p>
                Contraseña:
                <input id="clave" name="clave" type="text" value="<c:out value="${colegio.contraseña}"/>"/>
            </p>
            <button id="guardar" name="guardar" type="submit">Guardar</button>
        </form>
    </body>
</html>
