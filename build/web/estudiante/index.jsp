<%-- 
    Document   : nuevo
    Created on : 27/09/2022, 02:17:23 PM
    
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema</title>

    </head>

    <h1>Bienvenid@ </h1>
    <h1>Tabla productos  </h1>

    <a href="EstudianteController?accion=Nuevo">Nuevo Estudiante</a>
    <a href="EstudianteController?accion=">Mostrar</a>
    <br/><br/>
         <table border="1" width="80%">
            <thead>
                <tr>

                    <th>Cedula</th>
                    <th>Nombre</th>  
                    <th>Apellido</th> 
                    <th>Curso</th> 
                    <th>Edad</th> 
                  
                    <th></th>  
                    <th></th>  
                </tr>
            </thead>
            <tbody>
                <c:forEach var="estudiante" items="${lista}"> 
                    <tr>
                        <td><c:out value="${estudiante.cedula}"/> </td>
                        <td><c:out value="${estudiante.nombre}"/> </td>
                        <td><c:out value="${estudiante.apellido}"/> </td>
                        <td><c:out value="${estudiante.curso}"/> </td>
                        <td><c:out value="${estudiante.edad}"/> </td>


                        <td><a href="EstudianteController?accion=modificar&Cedula=<c:out value="${estudiante.cedula}"/>">Modificar</a> </td>
                        <td><a href="EstudianteController?accion=eliminar&Cedula=<c:out value="${estudiante.cedula}"/>">Eliminar</a> </td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
    <a href="AccesoController?accion=login">Cerrar sesión</a>

</html>
