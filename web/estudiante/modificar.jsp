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
        <title>Modificar Estudiante</title>

    </head>
    <body>
        <h2>Modificar Estudiante</h2>
        <form action ="EstudianteController?accion=actualizar" method="post" autocomplete="off">



            <p>
                Nombre:
                <input Id="Nombre" name="Nombre" type="text" value="<c:out value="${estudiante.nombre}"/>"/>
            </p>
            <p>
                Apellido:
                <input Id="Apellido" name="Apellido" type="text" value="<c:out value="${estudiante.apellido}"/>"/>
            </p>
            <p>
                Cedula:
                <input Id="Cedula" name="Cedula" type="text" value="<c:out value="${estudiante.cedula}"/>"/>
            </p>
            <p>
                Edad:
                <input Id="Edad" name="Edad" type="text" value="<c:out value="${estudiante.edad}"/>"/>
            </p>

            <p>
                Curso:
                <input Id="Curso" name="Curso" type="text" value="<c:out value="${estudiante.curso}"/>"/>
            </p>



            <button id="guardar" Name="guardar" type="submit">Guardar</button>
    </body>
</html>
