<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/styles/detalle.css">
<title>Detalle de la Cancion</title>
</head>
<body>
	 <div class="container">
        <h1>Detalle de Canción</h1>   
        <div class="detalle-cancion">
            <h2>${cancion.titulo}</h2>
            <p>Autor: ${cancion.artista}</p>
            <p>Álbum: ${cancion.album}</p>
            <p>Género: ${cancion.genero}</p>
            <p>Idioma:${cancion.idioma}</p>
            <p>Fecha de Creación: ${cancion.fechaCreacion}</p>
            <p>Última Actualización: ${cancion.fechaActualizacion}</p>
        </div>
        <a href="/canciones" class="btn-volver">Volver a la lista de canciones</a>
    </div>
</body>
</html>