<%-- 
    Document   : nuevo
    Created on : 27/09/2022, 02:17:23 PM
    Author     : danri
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instituto</title>



    </head>

    <h1>Bienvenid@ ${nombreListas}</h1>
    <h1>Tabla estudiantes </h1>

    <a href="ColegioController?accion=nuevo">Nuevo registro</a>
    <br/><br/>
    <table border="1" width="80%">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Cedula</th>
                <th>Edad</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>

            <c:forEach var="colegio" items="${lista}">
                <tr>
                    <td><c:out value="${colegio.nombre}"/></td>
                    <td><c:out value="${colegio.cedula}"/></td>
                    <td><c:out value="${colegio.edad}"/></td>
                    <td><a href="ColegioController?accion=modificar&cedula=<c:out value="${colegio.cedula}"/>">Modificar</a></td>
                    <td><a href="ColegioController?accion=eliminar&cedula=<c:out value="${colegio.cedula}"/>">Eliminar</a></td> 
                </tr>
            </c:forEach>


        </tbody>

    </table>
    <a href="ColegioController?accion=null">Cerrar sesión</a>

</html>
