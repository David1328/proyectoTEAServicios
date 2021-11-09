﻿using LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Utilitarios;
using System.Web.Http.Cors;
using System.Threading.Tasks;

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


		//http://localhost:60602/api/users/GetDatosPaciente?cedulaE=123456
		[Route("GetDatosAcudiente")]
		[HttpGet]
		public async Task<IHttpActionResult> GetDatosAcudiente(string cedulaE)
		{
			UAcudiente acudiente = new UAcudiente();

			try
			{
				acudiente = await new LUserRegistercs().obtenerDatosAcudiente(cedulaE);

				return Ok(acudiente);
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}

		
		[Route("GetDatosDocente")]
		[HttpGet]
		public async Task<IHttpActionResult> GetDatosDocente(string cedulaE)
		{
			UDocente acudiente = new UDocente();

			try
			{
				acudiente = await new LUserRegistercs().obtenerDatosDocente(cedulaE);

				return Ok(acudiente);
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}

		
		[Route("GetDatosPaciente")]
		[HttpGet]
		public async Task<IHttpActionResult> GetDatosPaciente(string cedulaE)
		{
			UPaciente acudiente = new UPaciente();

			try
			{
				acudiente = await new LUserRegistercs().obtenerDatosPaciente(cedulaE);

				return Ok(acudiente);
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}


	}
}
