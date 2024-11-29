package com.camilachamblas.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.camilachamblas.modelos.Cancion;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {
	
	//SELECT * FROM peliculas;
	List<Cancion> findAll();
	
}