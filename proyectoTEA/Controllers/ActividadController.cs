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
        [Route("GetListaActividades/{id_rol}/{id_card}")]
        //  {"idDocente": "int"}
        public IHttpActionResult getListaActividades(int id_rol, string id_card)
        {
            try
            {
                return Ok(new LActividad().listaActividades(id_rol,id_card));
            }
			catch (NullReferenceException ex){
				return BadRequest("No tienes un estudiante Enlazado");
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

		[Route("GetAcivitysMakedByPatientForTeacher/{id_activity}/{id_card_teacher}")]
		[HttpGet]
		public IHttpActionResult GetAcivitysMakedByPatientForTeacher(int id_activity,string id_card_teacher)
		{
			try
			{
				List<UPaciente> respuesta = new LActividad().getAcivitysDidByPatientForTeacher(id_activity, id_card_teacher);
				if (respuesta != null)
				{
					return Ok(respuesta);
				}
				else
				{

					return BadRequest("Tu estudiante no ha realizado esta actividad");
				}
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());
			}
		}

		[Route("GetAcivitysMakedByPatientForAttendant/{id_activity}/{id_card_attendant}")]
		[HttpGet]
		public IHttpActionResult GetAcivitysMakedByPatientForAttendant(int id_activity,string id_card_attendant)
		{
			try
			{

				List<UPaciente> respuesta = new LActividad().getAcivitysDidByPatientForAttendant(id_activity, id_card_attendant);
				if (respuesta!=null)
				{
					return Ok(respuesta);
				}
				else
				{
					return NotFound();
				}
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());
			}
		}

	}
}