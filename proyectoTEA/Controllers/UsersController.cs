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

		[Route("PostAgregar")]
		public string PostAgregar(UUsers nuevoUsuario)
		{
			string message;
			try
			{
				message = new LUserRegistercs().agregarUsuario(nuevoUsuario);
				return message;
			}
			catch (Exception ex)
			{
				message = "Hubo un error" + ex;
				return message;
			}
		}


	}
}
