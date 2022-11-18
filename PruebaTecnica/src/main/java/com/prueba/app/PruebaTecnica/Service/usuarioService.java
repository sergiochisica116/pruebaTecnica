package com.prueba.app.PruebaTecnica.Service;

import java.util.List;
import java.util.Optional;
import com.prueba.app.PruebaTecnica.Model.Usuario;

public interface usuarioService {
	
	
	public List <Usuario> listarUsuario();
	
	public Usuario crearActualizar(Usuario user);
	
	public Optional <Usuario> obtienePorId(Long numeroDocumento);
	
	public void eliminarUsuario(Long numeroDocumento);
	
	public List <Usuario> obtienePorNombre(String filtro);
	
}
