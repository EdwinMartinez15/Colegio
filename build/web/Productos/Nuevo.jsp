<%-- 
    Document   : Nuevo
    Created on : 27/09/2022, 07:08:16 PM
    Author     : EDWIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="Css/index.css">
    <div id="title"><h2>Nuevo</h2>
    </head>
    <body>

        <p>
        <div id="contenedor">



            <form action ="ProductosController?accion=Insertar" method="post" autocomplete="off">
                <selector>

                <span>Codigo</span><br> 
                <input Id="codigo" type="text" name="codigo" class="texto" ><br>

                <span>Nombre</span><br> 
                <input Id="nombre" type="nombre" name="txtdni" class="texto" ></br> 

                <span>Existencias</span><br> 
                <input Id="existencias" name="existencias" type="text"  class="texto" ></br> 

                <span>Precio</span><br> 
                <input Id="precio" name="precio" type="text"  class="texto" ></br> 
                <p>

                    <button id="Guardar" Name="Guardar" type="submit">Guardar</button>
                    </div>
                </p>
        </div>

    </body>

</html>
