<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" type="text/css" href="/styles/artista.css">
<title>Lista de Artistas</title>
</head>
<body>
 <h1>Lista de Artistas</h1>
    <div class="container">
        <div class="artistas-container">
            <c:forEach var="artista" items="${artistas}">
        <li>
            <div class="tarjeta-artista">
                <h3>${artista.nombre} ${artista.apellido}</h3>
                <p>${artista.biografia}</p>
                <form action="/artistas/detalle/${artista.id}" method="get">
                    <button type="submit" class="btn btn-detalle">Ver Detalles</button>
                </form>
            </div>
        </li>
    </c:forEach>
        </div>
        <div class="btn-container">
            <a href="/artistas/formulario/agregar" class="btn btn-agregar">Agregar nuevo artista</a>
            <a href="/canciones" class="btn">Volver a la lista de canciones</a>
        </div>
    </div>
</body>
</html>