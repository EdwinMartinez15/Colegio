<%-- 
    Document   : Login1
    Created on : 19/10/2022, 03:21:24 PM
    Author     : edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Css/style.css">
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <header id ="cabe">Trabajo de productos</header>
        <selector>
        <span id="titulo"> Ingresar usuario </span>
        <form>
            <span>Usuario:</span><br> 
            <input type="text" name="txtdni" class="texto" required titlle="dato invalido"
           pattern="[0-9]{8}"><br>
             
            <span>Contraseña </span><br>
            <input type="password" name="txtdni" class="texto">
            <input id="btn" type="submit" class="ok"  value="ingresar"  >
        </form>
        </selector>
    </body>
</html>
