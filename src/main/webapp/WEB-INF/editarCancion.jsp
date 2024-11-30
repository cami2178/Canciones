<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar pelicula</title>
</head>
<body>
	<h1>Editar Pelicula</h1>
	<div class="row">
		<form:form class="col-6"
			action="/canciones/procesa/editar/${cancion.id}" method="POST"
			modelAttribute="cancion">
			<input type="hidden" name="_method" value="PUT" />
			<div>
				<form:label path="titulo"> Título: </form:label>
				<form:input path="titulo" />
				<form:errors path="titulo" />
			</div>
			<div>
				<form:label path="artista"> Artista: </form:label>
				<form:input path="artista" />
				<form:errors path="artista" />
			</div>
			<div>
				<form:label path="album"> Album: </form:label>
				<form:input path="album" />
				<form:errors path="album" />
			</div>
			<div>
				<form:label path="genero"> Género: </form:label>
				<form:input path="genero" />
				<form:errors path="genero" />
			</div>
			<div>
				<form:label path="idioma"> Idioma: </form:label>
				<form:input path="idioma" />
				<form:errors path="idioma" />
				<button class="btn">Guardar</button>
			</div>
			<a href="/canciones" class="btn">Volver a la lista de canciones</a>
		</form:form>
	</div>
</body>
</html>