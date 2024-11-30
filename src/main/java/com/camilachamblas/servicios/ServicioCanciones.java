package com.camilachamblas.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camilachamblas.modelos.Cancion;
import com.camilachamblas.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

	@Autowired
	private final RepositorioCanciones repositorioCanciones;
	
	public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
		this.repositorioCanciones = repositorioCanciones;
	}
	
	public List<Cancion> obtenerTodasLasCanciones() {
		return this.repositorioCanciones.findAll();
	}
	
	 public Cancion obtenerCancionPorId(Long id) {
	        return this.repositorioCanciones.findById(id).orElse(null);
	    }
	
	 public Cancion agregarCancion(Cancion cancion) {
	        return this.repositorioCanciones.save(cancion); 
	    }
	 
	 public Cancion actualizarCancion(Cancion cancion) {
	     	return this.repositorioCanciones.save(cancion); 
	 }
}