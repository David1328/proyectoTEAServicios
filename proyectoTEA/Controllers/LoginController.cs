using LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using Utilitarios;

namespace proyectoTEA.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]

    [RoutePrefix("api/login")]
    public class LoginController : ApiController
    {

        [Route("PostIngresoLogin")]

		public string PostIngresoLogin(UUsers usuarioE)
		{
			string message;
			try
			{
				/*System.Web.HttpContext.Current.Session["login"] = */
				string sesion = usuarioE.Usuario;
				message = new LIngresoLogin().ingresoLogin(usuarioE, sesion);
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