using LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
		[HttpPost]
		[Route("PostIngresoLogin")]

		public async Task<IHttpActionResult> PostIngresoLogin(UUsers usuarioE)
		{
			string message;
			try
			{
				message = await new LIngresoLogin().ingresoLogin(usuarioE);
				return Ok(message);
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}
	}
}