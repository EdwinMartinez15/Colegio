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



            <form action ="EstudianteController?accion=Insertar" method="post" autocomplete="off">
                <selector>

                <span>Cedula</span><br> 
                <input Id="Cedula" name="Cedula" type="text" ><br>

                <span>Nombre</span><br> 
                <input Id="Nombre" name="Nombre" type="text" ></br> 

                <span>Apellido</span><br> 
                <input Id="Apellido" name="Apellido"   type="text" ></br> 

                <span>Edad</span><br> 
                <input Id="Edad" name="Edad" type="text" ></br>

                <span>Curso</span><br> 
                <input Id="Curso" name="Curso" type="text" ></br>



                <button id="Guardar" Name="Guardar" type="submit">Guardar</button>
        </div>
        </p>
</div>

</body>

</html>
