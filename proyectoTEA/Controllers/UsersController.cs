using LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Utilitarios;
using System.Web.Http.Cors;

namespace proyectoTEA.Controllers
{
	[EnableCors(origins: "*", headers: "*", methods: "*")]


	[RoutePrefix("api/users")]
	public class UsersController : ApiController
    {
		[Route("PostAgregarAcudiente")]
		public IHttpActionResult PostAgregarAcudiente(UAcudiente nuevoAcudiente)
		{
			string message;
			try
			{
				message = new LUserRegistercs().agregarUsuarioAcudiente(nuevoAcudiente);
				switch (message)
				{
					case "Este usuario ya existe":
						return Conflict();
					case "Registrado con exito":
						return Ok(message);
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

		[Route("PostAgregarDocente")]
		public IHttpActionResult PostAgregarDocente(UDocente nuevoDocente)
		{
			string message;
			try
			{
				message = new LUserRegistercs().agregarUsuarioDocente(nuevoDocente);
				switch (message)
				{
					case "Este usuario ya existe":
						return Conflict();
					case "Registrado con exito":
						return Ok(message);
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
		[Route("PostAgregarPaciente")]
		public IHttpActionResult PostAgregarPaciente(UDocente nuevoDocente)
		{
			string message;
			try
			{
				message = new LUserRegistercs().agregarUsuarioDocente(nuevoDocente);
				switch (message)
				{
					case "Este usuario ya existe":
						return Conflict();
					case "Registrado con exito":
						return Ok(message);
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
