package com.prueba.app.PruebaTecnica.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ocupaciones")
public class Ocupacion {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idOcupacion")
	private Long idOcupacion;
	
	private String nombreOcupacion;
	
	public Ocupacion() {
		
	}
	
	// GETTERS AND SETTERS

	public Long getIdOcupacion() {
		return idOcupacion;
	}

	public void setIdOcupacion(Long idOcupacion) {
		this.idOcupacion = idOcupacion;
	}

	public String getNombreOcupacion() {
		return nombreOcupacion;
	}

	public void setNombreOcupacion(String nombreOcupacion) {
		this.nombreOcupacion = nombreOcupacion;
	}
	
	// CONSTRUCTORS

	public Ocupacion(Long idOcupacion, String nombreOcupacion) {
		super();
		this.idOcupacion = idOcupacion;
		this.nombreOcupacion = nombreOcupacion;
	}
	
	public Ocupacion(String nombreOcupacion) {
		super();
		this.nombreOcupacion = nombreOcupacion;
	}
	
}
