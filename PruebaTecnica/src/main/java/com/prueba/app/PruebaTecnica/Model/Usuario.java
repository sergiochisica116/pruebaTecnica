package com.prueba.app.PruebaTecnica.Model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="usuarios")
public class Usuario{

	@Id
	@Column(name = "documento")
	private Long documento;
	
	private String nombre;
	
	private String apellido;
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaNacimiento;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@OneToOne (fetch = FetchType.LAZY)
	@JoinColumn(name="idCiudad")
	private Ciudad ciudad;
	
	private String correo;
	
	private String telefono;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@OneToOne (fetch = FetchType.LAZY)
	@JoinColumn(name="idOcupacion")
	private Ocupacion ocupacion;
	
	
	
	
	// GETTERS AND SETTERS

	public Long getDocumento() {
		return documento;
	}

	public void setDocumento(Long documento) {
		this.documento = documento;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public Ciudad getCiudad() {
		return ciudad;
	}

	public void setCiudad(Ciudad ciudad) {
		this.ciudad = ciudad;
	}

	public Ocupacion getOcupacion() {
		return ocupacion;
	}

	public void setOcupacion(Ocupacion ocupacion) {
		this.ocupacion = ocupacion;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correElectronico) {
		this.correo = correElectronico;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	// CONSTRUCTORS

	public Usuario(Long documento, String nombre, String apellido, Date fechaNacimiento, Ciudad ciudad,
			String correElectronico, String telefono, Ocupacion ocupacion, String correo) {
		super();
		this.documento = documento;
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechaNacimiento = fechaNacimiento;
		this.ciudad = ciudad;
		this.correo = correo;
		this.telefono = telefono;
		this.ocupacion = ocupacion;
	}

	public Usuario(String nombre, String apellido, Date fechaNacimiento, Ciudad ciudad,
			String correo, String telefono, Ocupacion ocupacion) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechaNacimiento = fechaNacimiento;
		this.ciudad = ciudad;
		this.correo = correo;
		this.telefono = telefono;
		this.ocupacion = ocupacion;
	}

	public Usuario() {
		
	}
	
	
	
}
