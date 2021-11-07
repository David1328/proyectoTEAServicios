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
	[RoutePrefix("api/users")]
	public class UsersController : ApiController
    {

		[Route("PostUserAcudiente")]
		public string PostAdoption(UUsers nuevoUsuario)
		{
			string message;
			try
			{
				new LUserRegistercs().agregarUsuario(nuevoUsuario);
				message = "Publicación exitosa";
				return message;
			}
			catch (Exception ex)
			{
				message = "Hubo un error al subir tu adopción" + ex;
				return message;
			}
		}
	}
}
