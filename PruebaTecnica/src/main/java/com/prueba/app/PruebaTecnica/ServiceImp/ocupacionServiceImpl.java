package com.prueba.app.PruebaTecnica.ServiceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.app.PruebaTecnica.Service.ocupacionService;
import com.prueba.app.PruebaTecnica.Repository.ocupacionRepository;
import com.prueba.app.PruebaTecnica.Model.Ocupacion;

@Service
public class ocupacionServiceImpl implements ocupacionService {
	
	@Autowired
	private ocupacionRepository ocupacionRepor;

	@Override
	public List<Ocupacion> listarOcupacion() {
		return ocupacionRepor.findAll();
	}
	
}
