<%-- 
    Document   : modificar
    Created on : 27/09/2022, 02:17:29 PM
    Author     : EDWIN

           
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Producto</title>

    </head>
    <body>
        <h2>Modificar Registro</h2>
        <form action ="ProductosController?accion=actualizar" method="post" autocomplete="off">

            <input Id="id" name="id" type ="hidden" value="<c:out value="${producto.id}"/>"/>

            <p>
                Codigo:
                <input Id="codigo" name="codigo" type="text" value="<c:out value="${producto.codigo}"/>"/>
            </p>
            <p>
                Nombre:
                <input Id="nombre" name="nombre" type="text" value="<c:out value="${producto.nombre}"/>"/>
            </p>
            <p>
                Existencias:
                <input Id="existencias" name="existencias" type="text" value="<c:out value="${producto.existencias}"/>"/>
            </p>

            <p>
                Precio:
                <input Id="precio" name="precio" type="text" value="<c:out value="${producto.precio}"/>"/>
            </p>



            <button id="guardar" Name="guardar" type="submit">Guardar</button>
    </body>
</html>
