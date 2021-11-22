using LogicaDeNegocio;
using System;
using System.Web.Http.Cors;
using System.Web.Http;
using Utilitarios;

namespace proyectoTEA.Controllers
{
	[EnableCors(origins: "*", headers: "*", methods: "*")]

	[RoutePrefix("api/paciente")]
	public class PacienteController : ApiController
    {
		[Route("crearDocentePaciente")]
		[HttpPut]
		public IHttpActionResult crearDocentePaciente(UDocente uDocente)
		{
			string message;
			try
			{
				message = new LPaciente().enlazarDocentePaciente(uDocente);
				switch (message)
				{
					case "Ya existe un enlace o cedula no creada":
						return Conflict();
					case "Enlace exitoso":
						return Ok(message);
					case "No perteneces a la misma institucion":
						return Conflict();
					default:
						return BadRequest(message);
				}
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return BadRequest(message);
			}
		}

		[Route("obtenerEstudiantesPorEnlazar/{id}")]
		[HttpGet]

		public IHttpActionResult obtenerLosPacientesPorEnlazar(int id)
		{
			string message;
			try
			{
				return Ok(new LPaciente().obtenerEstudiantesPorEnlazar(id));
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return BadRequest(message);
			}
		}
		[Route("obtenerPacientesEnlazados/{id}")]
		[HttpGet]

		public IHttpActionResult obtenerLosPacientesEnlados(int id)
		{
			string message;
			try
			{
				return Ok(new LPaciente().obtenerEstudiantesEnlazados(id));
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return BadRequest(message);
			}
		}
		[Route("enlazarConEstudiante")]
		[HttpPut]

		public IHttpActionResult enlazarEstudianteConEstudiante(UPaciente datosAEnlazar)
		{
			string message;
			try
			{
				message = new LPaciente().enlazarConEstudiante(datosAEnlazar);
				return Ok(message);
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return BadRequest(message);
			}
		}
	}
}
