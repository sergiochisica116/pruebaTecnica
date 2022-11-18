package com.prueba.app.PruebaTecnica.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ciudades")

public class Ciudad {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idCiudad")
	private Long idCiudad;
	
	private String nombreCiudad;
	
	public Ciudad() {
		
	}
	
	// GETTERS AND SETTERS

	public Long getIdCiudad() {
		return idCiudad;
	}

	public void setIdCiudad(Long idCiudad) {
		this.idCiudad = idCiudad;
	}

	public String getNombreCiudad() {
		return nombreCiudad;
	}

	public void setNombreCiudad(String nombreCiudad) {
		this.nombreCiudad = nombreCiudad;
	}
	
	//CONSTRUCTORS

	public Ciudad(Long idCiudad, String nombreCiudad) {
		super();
		this.idCiudad = idCiudad;
		this.nombreCiudad = nombreCiudad;
	}
	
	public Ciudad(String nombreCiudad) {
		super();
		this.nombreCiudad = nombreCiudad;
	}
	
}