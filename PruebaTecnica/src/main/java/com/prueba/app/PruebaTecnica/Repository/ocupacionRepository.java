package com.prueba.app.PruebaTecnica.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.prueba.app.PruebaTecnica.Model.Ocupacion;

public interface ocupacionRepository extends JpaRepository<Ocupacion, Long> {

	
}
