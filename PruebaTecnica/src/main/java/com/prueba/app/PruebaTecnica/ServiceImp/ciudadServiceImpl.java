package com.prueba.app.PruebaTecnica.ServiceImp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.app.PruebaTecnica.Model.Ciudad;
import com.prueba.app.PruebaTecnica.Repository.ciudadRepository;
import com.prueba.app.PruebaTecnica.Service.ciudadService;

@Service
public class ciudadServiceImpl implements ciudadService{

	@Autowired
	private ciudadRepository ciudadRepor;
	
	@Override
	public List<Ciudad> listarCiudad() {
		return ciudadRepor.findAll();
	}
}
