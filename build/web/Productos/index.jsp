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

    <a href="ProductosController?accion=Nuevo">Nuevo Producto</a>
    <a href="ProductosController?accion=">Mostrar</a>
    <br/><br/>
         <table border="1" width="80%">
            <thead>
                <tr>

                    <th>Codigo</th>
                    <th>Nombre</th>  
                    <th>Existencias</th> 
                    <th>Precio</th> 
                    <th></th>  
                    <th></th>  
                </tr>
            </thead>
            <tbody>
                <c:forEach var="producto" items="${lista}"> 
                    <tr>
                        <td><c:out value="${producto.codigo}"/> </td>
                        <td><c:out value="${producto.nombre}"/> </td>
                        <td><c:out value="${producto.existencias}"/> </td>
                        <td><c:out value="${producto.precio}"/> </td>


                        <td><a href="ProductosController?accion=modificar&id=<c:out value="${producto.id}"/>">Modificar</a> </td>
                        <td><a href="ProductosController?accion=eliminar&id=<c:out value="${producto.id}"/>">Eliminar</a> </td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
    <a href="AccesoController?accion=login">Cerrar sesión</a>

</html>
