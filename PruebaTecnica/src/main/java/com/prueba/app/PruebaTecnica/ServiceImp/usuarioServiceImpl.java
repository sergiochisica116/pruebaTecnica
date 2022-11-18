package com.prueba.app.PruebaTecnica.ServiceImp;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.prueba.app.PruebaTecnica.Model.Usuario;
import com.prueba.app.PruebaTecnica.Repository.usuarioRepository;
import com.prueba.app.PruebaTecnica.Service.usuarioService;

@Service
public class usuarioServiceImpl implements usuarioService {

	@Autowired
	private usuarioRepository usuarioRepor;

	@Override
	public List<Usuario> listarUsuario() {
		return usuarioRepor.findAll();
	}

	@Override
	public Usuario crearActualizar(Usuario user) {
		return usuarioRepor.save(user);
	}

	@Override
	public Optional<Usuario> obtienePorId(Long numeroDocumento) {
		return usuarioRepor.findById(numeroDocumento);
	}

	@Override
	public void eliminarUsuario(Long numeroDocumento) {
		usuarioRepor.deleteById(numeroDocumento);
		
	}

	@Override
	public List<Usuario> obtienePorNombre (String filtro) {
		return usuarioRepor.obtenerPorNombre(filtro);
	}

}
