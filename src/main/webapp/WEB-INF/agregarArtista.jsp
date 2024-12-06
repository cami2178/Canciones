<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar artista</title>
</head>
<body>

	<h1>Agregar Artista</h1>
	<form:form class="col-6" action="/artistas/procesa/agregar"
		method="POST" modelAttribute="artista">

		<div>
			<form:label path="nombre">Nombre:</form:label>
			<form:input path="nombre" />
			<form:errors path="nombre" />
		</div>

		<div>
			<form:label path="apellido">Apellido:</form:label>
			<form:input path="apellido" />
			<form:errors path="apellido" />
		</div>

		<div>
			<form:label path="biografia">Biografía:</form:label>
			<form:textarea path="biografia" />
			<form:errors path="biografia" />
		</div>

		<button class="btn">Agregar</button>
	</form:form>
	<br>
	<a href="/artistas">Volver a la lista de artistas</a>

</body>
</html>