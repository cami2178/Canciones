package com.camilachamblas.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.camilachamblas.modelos.Artista;
import com.camilachamblas.servicios.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

	private final ServicioArtistas servicioArtistas;

	@Autowired
	public ControladorArtistas(ServicioArtistas servicioArtistas) {
		this.servicioArtistas = servicioArtistas;
	}

	@GetMapping("/artistas")
	public String desplegarArtistas(Model modelo) {
		modelo.addAttribute("artistas", servicioArtistas.obtenerTodosLosArtistas());
		return "artistas.jsp";
	}

	@GetMapping("/artistas/detalle/{id}")
	public String desplegarDetalleArtista(@PathVariable("id") Long id, Model modelo) {
		modelo.addAttribute("artista", servicioArtistas.obtenerArtistaPorId(id));
		return "detalleArtista.jsp";
	}

	@GetMapping("/artistas/formulario/agregar")
	public String formularioAgregarArtista(@ModelAttribute Artista artista) {
		return "agregarArtista.jsp";
	}

	@PostMapping("/artistas/procesa/agregar")
	public String procesarAgregarArtista(@Valid @ModelAttribute Artista artista, BindingResult validaciones) {
		if (validaciones.hasErrors()) {
			return "agregarArtista.jsp";
		}
		servicioArtistas.agregarArtista(artista);
		return "redirect:/artistas";
	}
}