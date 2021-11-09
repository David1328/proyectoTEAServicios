using LogicaDeNegocio;
using Newtonsoft.Json.Linq;
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

    [RoutePrefix("api/actividades")]
    public class ActividadController : ApiController
    {
        [HttpGet]
        [Route("GetListaActividades")]
        //  {"idDocente": "int"}
        public IHttpActionResult PostCancelarMireserva([FromBody] JObject idDocente)
        {
            UActividad actividad = new UActividad();
            try
            {
                actividad.Docente_creador = idDocente["idDocente"].ToString();
                return Ok(new LActividad().listaActividadesDocente(actividad));
            }
            catch (Exception ex)
            {
                return BadRequest("surgio el siguente error: " + ex.Message.ToString());
            }
        }

        [HttpPost]
        [Route("PostAgregarActividad")]
        public IHttpActionResult PostAgregarActividad(UActividad actividadE)
        {
            try
            {
                return Ok(new LActividad().agregarActividad(actividadE));
            }
            catch (Exception ex)
            {
                return BadRequest("surgio el siguente error: " + ex.Message.ToString());
            }
        }
    }
}