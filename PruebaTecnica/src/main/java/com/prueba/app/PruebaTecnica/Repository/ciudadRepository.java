package com.prueba.app.PruebaTecnica.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.prueba.app.PruebaTecnica.Model.Ciudad;

public interface ciudadRepository extends JpaRepository<Ciudad, Long>{
	
}
