package com.prueba.app.PruebaTecnica.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prueba.app.PruebaTecnica.Model.Usuario;

public interface usuarioRepository extends JpaRepository<Usuario, Long>{
	
	@Query("Select a from Usuario a where nombre like :fil")
	public abstract List<Usuario> obtenerPorNombre(@Param("fil") String nombre);

}
