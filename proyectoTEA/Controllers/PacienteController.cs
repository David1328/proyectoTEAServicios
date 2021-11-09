using LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Utilitarios;

namespace proyectoTEA.Controllers
{
	[RoutePrefix("api/paciente")]
	public class PacienteController : ApiController
    {
		[Route("enlazarDocentePaciente")]
		[HttpPut]
		public IHttpActionResult enlazarDocentePaciente(UDocente uDocente)
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
						return BadRequest();
				}
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return BadRequest();
			}
		}
	}
}
