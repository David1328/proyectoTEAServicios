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
		[HttpPost]
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
						return BadRequest(message);
				}
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return BadRequest(message);
			}
		}

		[Route("PostAgregarDocente")]
		[HttpPost]
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
		[HttpPost]
		public IHttpActionResult PostAgregarPaciente(UPaciente nuevoPaciente)
		{
			string message;
			try
			{
				message = new LUserRegistercs().agregarUsuarioPaciente(nuevoPaciente);
				switch (message)
				{
					case "Este usuario ya existe":
						return Conflict();
					case "Registrado con exito":
						return Ok(message);
					case "Hace falta la cedula o cedula no existente":
						return BadRequest(message);
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
