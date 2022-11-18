package com.prueba.app.PruebaTecnica.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.prueba.app.PruebaTecnica.Model.Ciudad;
import com.prueba.app.PruebaTecnica.Model.Ocupacion;
import com.prueba.app.PruebaTecnica.Model.Usuario;
import com.prueba.app.PruebaTecnica.Service.ciudadService;
import com.prueba.app.PruebaTecnica.Service.ocupacionService;
import com.prueba.app.PruebaTecnica.Service.usuarioService;

@Controller
public class usuarioController {


	@Autowired
	private usuarioService usuarioServis;
	
	@Autowired
	private ocupacionService ocupacionServis;
	
	@Autowired
	private ciudadService ciudadServis;
	
	
	@RequestMapping("/listaUsuarios")
	public String VerInicio() {
		return "crudUsuario";
	}
	
	@RequestMapping("/consultarUsuario")
	@ResponseBody
	public List <Usuario> listaUsuario (String filtro){
		List<Usuario> lista = usuarioServis.obtienePorNombre("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/listaCiudad")
	@ResponseBody
	public List <Ciudad> listCiudad (){
		List<Ciudad> lista = ciudadServis.listarCiudad();
		return lista;
	}
	
	@RequestMapping("/listaOcupacion")
	@ResponseBody
	public List <Ocupacion> listOcupacion(){
		List<Ocupacion> lista = ocupacionServis.listarOcupacion();
		return lista;
	}
	
	@RequestMapping("/registrarUsuario")
	@ResponseBody
	public Map<String, Object> registrar (Usuario user){
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Usuario objSalida = usuarioServis.crearActualizar(user);
			if (objSalida == null){
				salida.put("Mensaje", "Error en el registro");
			}else {
				List<Usuario> lista = usuarioServis.listarUsuario();
				salida.put("lista", lista);
				salida.put("Mensaje", "Registro Exitoso");
			}
		} catch (Exception e) {
			e.printStackTrace();	
		}	
		return salida;
	}
	
	@RequestMapping("/actualizarUsuario")
	@ResponseBody
	public Map<String, Object> actualiza (Usuario user){
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Usuario objSalida = usuarioServis.crearActualizar(user);
			if (objSalida == null){
				salida.put("Mensaje", "Error en la actualizacion");
			}else {
				List<Usuario> lista = usuarioServis.listarUsuario();
				salida.put("lista", lista);
				salida.put("Mensaje", "Actualizacion Exitosa");
			}
		} catch (Exception e) {
			e.printStackTrace();	
		}
		return salida;
	}
	
	@RequestMapping("/eliminarUsuario")
	@ResponseBody
	public Map<String, Object> elimina (Long user){
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Optional<Usuario> opt = usuarioServis.obtienePorId(user);
			if(opt.isPresent()) {
				usuarioServis.eliminarUsuario(user);
				salida.put("mensaje", "Usuario Eliminado con Exito");
			}else {
				usuarioServis.eliminarUsuario(user);
				List<Usuario> lista = usuarioServis.listarUsuario();
				salida.put("lista", lista);
				salida.put("mensaje", "El Usuario no se pudo Eliminar");
			}	
		} catch (Exception e) {
			e.printStackTrace();	
		}	
		return salida;
	}

}