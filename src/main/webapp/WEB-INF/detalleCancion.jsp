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
			<p>Autor: ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
			<p>Álbum: ${cancion.album}</p>
			<p>Género: ${cancion.genero}</p>
			<p>Idioma:${cancion.idioma}</p>
			<p>Fecha de Creación: ${cancion.fechaCreacion}</p>
			<p>Última Actualización: ${cancion.fechaActualizacion}</p>
		</div>
		<div class="btn-container">
		<form
			action="/canciones/formulario/editar/${cancion.id}">
			<button class="btn">Editar</button>
		</form>
		<form
			action="/canciones/eliminar/${cancion.id}" method="POST">
				<input type="hidden" name="_method" value="DELETE">
			<button class="btn">Eliminar</button>
		</form>
		<a href="/canciones" class="btn">Volver a la lista de canciones</a>
		</div>
	</div>
</body>
</html>