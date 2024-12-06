<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle artista</title>
</head>
<body>
	<h1>Detalles del Artista</h1>
	<p>Nombre: ${artista.nombre} ${artista.apellido}</p>
	<p>Biografía: ${artista.biografia}</p>
	<p>Fecha de Creación: ${artista.fechaCreacion}</p>
	<p>Fecha de Actualización: ${artista.fechaActualizacion}</p>

	<h2>Canciones del Artista:</h2>
	<ul>
		<c:forEach var="cancion" items="${artista.canciones}">
			<li>${cancion.titulo}(${cancion.album})</li>
		</c:forEach>
	</ul>
	<a href="/artistas">Volver a lista de artistas</a>
</body>
</html>