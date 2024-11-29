package com.camilachamblas.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.camilachamblas.modelos.Cancion;
import com.camilachamblas.servicios.ServicioCanciones;

import jakarta.validation.Valid;



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
	 
	 @GetMapping("/canciones/formulario/agregar/{idCancion}")	
	 public String formularioAgregarCancion(@ModelAttribute Cancion cancion) {
		 return "agregarCancion.jsp";
	 }
	 
	 @PostMapping("/canciones/procesa/agregar")
	 public String procesarAgregarCancion(@Valid @ModelAttribute Cancion cancion, 
	 										BindingResult validaciones) {
	 		if(validaciones.hasErrors()) {
	 			return "AgregarCancion.jsp";
	 		}
	 		 this.servicioCanciones.agregarCancion(cancion); 
	 		return"redirect:/canciones";
		 
	 }
	 
}
