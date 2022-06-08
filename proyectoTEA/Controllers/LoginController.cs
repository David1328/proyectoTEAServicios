using LogicaDeNegocio;
using proyectoTEA.Seguridad;
using System;
using Newtonsoft.Json.Linq;
using System.Threading.Tasks;
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
            UTokenCompra validacionCompra = new UTokenCompra();
            try
			{
                if (usuarioE.Rol_id == 1)
                {
					validacionCompra = await new LUserRegistercs().obtenerDatosCompra(usuarioE.Documento);
                }
                else if (usuarioE.Rol_id != 1)
				{
					validacionCompra.Token = "ok";
				}
                

                if (validacionCompra == null)
                {
                    return BadRequest("Debes tener una licencia activa para ingresar.");
                }
                else if(validacionCompra != null)
                {
                    Wraper wp = new Wraper();
                    wp = await new LIngresoLogin().ingresoLogin(usuarioE);

                    if (wp.WraperUsuario == null)
                    {
                        return BadRequest(wp.Mensaje);
                    }
                    else
                    {
                        usuarioE.Rol_id = wp.WraperUsuario.Rol_id;
                        wp.Token = TokenGenerator.GenerateTokenJwt(usuarioE);
                        return Ok(wp);
                    }
                }
                else
                {
                    return BadRequest();
                }
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}

        [HttpPost]
        [Route("PostCerrarSesion")]
        //{"usuario": "string"}
        public IHttpActionResult postCerrarSesion([FromBody] JObject usuario)
        {
            try
            {
                UUsers datos = new UUsers();
                datos.Documento = usuario["usuario"].ToString();
                return Ok(new LIngresoLogin().cerrarsession(datos));
            }
            catch (Exception ex)
            {
                var mensaje = "surgio el siguente error: " + ex.Message.ToString();
                return BadRequest(mensaje);
            }

        }

		[HttpPut]
		[Route("PutCorreoRecuperarClave")]

		public async Task<IHttpActionResult> PutCorreoRecuperarClave(UDocente usuario)
		{
			try
			{
				string enviarCorreoRecuperar = new LIngresoLogin().enviarCorreoDeRecuperacion(usuario.Correo);
				if (enviarCorreoRecuperar != null)
				{
					return Ok(enviarCorreoRecuperar);
				}
				return BadRequest("No se encontro el correo");
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}
		[HttpGet]
		[Route("GetAccesoClave/{token}")]
		public async Task<IHttpActionResult> GetAccesoClave(string token)
		{
			try
			{
				string accessoClaveNueva = new LIngresoLogin().accesoTokenRecuperar(token);
				if (accessoClaveNueva.Equals("Acceso exitoso"))
				{
					return Ok(accessoClaveNueva);
				}
				return BadRequest(accessoClaveNueva);
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}
		[HttpPut]
		[Route("PutCambiarClave")]

		public async Task<IHttpActionResult> PutCambiarClave(UUsers usuario)
		{
			try
			{
				string enviarCorreoRecuperar = new LIngresoLogin().nuevaClave(usuario);
				if (enviarCorreoRecuperar == "Clave modificada con exito")
				{
					return Ok(enviarCorreoRecuperar);
				}
				return BadRequest("No se pudo modificar la clave");
			}
			catch (Exception ex)
			{
				return InternalServerError(ex);
			}
		}
	}
}