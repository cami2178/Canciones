package com.camilachamblas.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.camilachamblas.modelos.Cancion;
import com.camilachamblas.servicios.ServicioCanciones;



@Controller
public class ControladorCanciones {
	
	@Autowired
	private final ServicioCanciones servicioCanciones;
	
	public ControladorCanciones(ServicioCanciones servicioCanciones) {
		this.servicioCanciones = servicioCanciones;
	}

	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List<Cancion> canciones = this.servicioCanciones.obtenerTodasLasCanciones();
		modelo.addAttribute("canciones", canciones);
		return "canciones.jsp";
	}
	
	 @GetMapping("/canciones/detalle/{idCancion}")
	    public String desplegarDetalleCancion(@PathVariable Long idCancion, Model modelo) {
	        Cancion cancion = this.servicioCanciones.obtenerCancionPorId(idCancion);
	        	if (cancion == null) {
	        		modelo.addAttribute("mensaje", "Canción no encontrada");
	        			} else {
	        				modelo.addAttribute("cancion", cancion);
	        			}
	        	return "detalleCancion.jsp"; 
	    }
	 
}
