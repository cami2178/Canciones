<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/style.css">
<meta charset="UTF-8">
<title>Lista de Canciones</title>
</head>
<body>
	<div class="container">
		<h1>Listado de Canciones</h1>
		<div class="canciones-container">
			<c:forEach var="cancion" items="${canciones}">
				<div class="tarjeta-cancion">
					<h3>${cancion.titulo}</h3>
					<p>Autor: ${cancion.artista}</p>
					<a href="/canciones/detalle/${cancion.id}" class="btn">Detalle</a>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>