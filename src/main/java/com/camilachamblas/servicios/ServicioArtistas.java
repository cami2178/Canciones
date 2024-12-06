package com.camilachamblas.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camilachamblas.modelos.Artista;
import com.camilachamblas.repositorios.RepositorioArtistas;

@Service
public class ServicioArtistas {

    @Autowired
    private RepositorioArtistas repositorioArtistas;

    public List<Artista> obtenerTodosLosArtistas() {
        return repositorioArtistas.findAll();
    }

    public Artista obtenerArtistaPorId(Long id) {
        return repositorioArtistas.findById(id).orElse(null);
    }

    public Artista agregarArtista(Artista artista) {
        return repositorioArtistas.save(artista);
    }
}