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
		[Route("GetTypeActivity")]
		public IHttpActionResult getTypeActivity()
		{
			try
			{
				return Ok(new LActividad().getTypeActivity());
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());
			}
		}

		[HttpGet]
        [Route("GetListaActividades/{idDocente}")]
        //  {"idDocente": "int"}
        public IHttpActionResult getListaActividades(int idDocente)
        {
            UActividad actividad = new UActividad();
            try
            {
                actividad.Docente_creador = idDocente.ToString();
                return Ok(new LActividad().listaActividadesDocente(actividad));
            }
            catch (Exception ex)
            {
                return BadRequest("surgio el siguente error: " + ex.Message.ToString());
            }
        }

		[HttpGet]
		[Route("GetActivityPerId/{idActivity}")]
		//  {"idDocente": "int"}
		public IHttpActionResult getActivityPerId(int idActivity)
		{
			try
			{
				return Ok(new LActividad().getActivityId(idActivity));
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



		[Route("DeleteActividad/{actividad_id}")]
		[HttpDelete]
		public IHttpActionResult DeleteActividad(string actividad_id)
		{
			string message;
			try
			{
				message = new LActividad().eliminarActividad(int.Parse(actividad_id));
				return Ok(message);
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());
			}
		}

		[Route("PutActividadEstudiante")]
		[HttpPut]
		public IHttpActionResult PutActividadEstudiante(UActividad uActividad)
		{
			string message;
			try
			{
				message = new LActividad().putActividadEstudiante(uActividad);
				return Ok(message);
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());
			}
		}

	}
}