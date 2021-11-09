using LogicaDeNegocio;
using proyectoTEA.Seguridad;
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
			try
			{
				Wraper wp = new Wraper();
				wp = await new LIngresoLogin().ingresoLogin(usuarioE);

                if (wp.WraperUsuario == null)
                {
					return BadRequest(wp.Mensaje);
                }
                else
                {
					wp.Token = TokenGenerator.GenerateTokenJwt(usuarioE);
					return Ok(wp);
				}
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}
	}
}