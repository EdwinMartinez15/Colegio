<%-- 
    Document   : login
    Created on : 4/10/2022, 06:50:23 PM
    Author     : danri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://fonts.googleapis.com/css2?family=Fraunces&display=swap" rel="stylesheet">
        <link href="index.css" rel="stylesheet" />
        <script src="Display.js" ></script>
        <script src="Calculadora.js" ></script>
        <script src="index.js" defer></script>
    </head>
    <body>
        <h2>INGRESO A LA PLATAFORMA</h2>
        <form action="AccesoController?accion=ingreso" method="Post" autocomplete="off">
            <p>
                Usuario:
                <input id="nombre" name="nombre" type="text"/>
            </p>
            <p>
                Contraseña:
                <input id="cedula" name="cedula" type="password"/>
            </p>
            <button id="ingresar" name="ingresar" type="submit" onclick=validar_usuario()>Ingresar</button>
            <b>${mensaje}</b>

        </form>
        <form  action="AccesoController?accion=regreso" method="Post" autocomplete="off">
            <button id="regresar" name="regresar" type="submit">Regresar</button>
        </form>
    </body>
</html>

