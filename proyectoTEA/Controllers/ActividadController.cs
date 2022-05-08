﻿using LogicaDeNegocio;
using System;
using System.Collections.Generic;
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
				return Ok(new LActividad().listaActividades(id_rol, id_card));
			}
			catch (NullReferenceException ex)
			{
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



		[Route("PutActividadDesActivar/{actividad_id}")]
		[HttpDelete]
		public IHttpActionResult PutActividadDesActivar(string actividad_id)
		{
			string message;
			try
			{
				message = new LActividad().activarODesactivarActividad(int.Parse(actividad_id));
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
		public IHttpActionResult GetAcivitysMakedByPatientForTeacher(int id_activity, string id_card_teacher)
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
		public IHttpActionResult GetAcivitysMakedByPatientForAttendant(int id_activity, string id_card_attendant)
		{
			try
			{

				List<UPaciente> respuesta = new LActividad().getAcivitysDidByPatientForAttendant(id_activity, id_card_attendant);
				if (respuesta != null)
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

		[Route("GetEvaluacionInicialCiencias")]
		[HttpGet]
		public IHttpActionResult GetEvaluacionInicialCiencias()
		{
			List<UEvaluacionInicial> respuesta = new LActividad().getListActivitysToInicialEvaluation(1);
			return Ok(respuesta);
		}


		[Route("GetEvaluacionInicialMatematicas")]
		[HttpGet]
		public IHttpActionResult GetEvaluacionInicialMatematicas()
		{
			List<UEvaluacionInicial> respuesta = new LActividad().getListActivitysToInicialEvaluation(2);
			return Ok(respuesta);
		}
		//GetEvaluacionInicialComunicacion

		[Route("GetEvaluacionInicialComunicacion")]
		[HttpGet]
		public IHttpActionResult GetEvaluacionInicialComunicacion()
		{
			List<UEvaluacionInicial> respuesta = new LActividad().getListActivitysToInicialEvaluation(3);
			return Ok(respuesta);
		}

		[Route("GetEvaluacionInicialHabilidadesSociales")]
		[HttpGet]
		public IHttpActionResult GetEvaluacionInicialHabilidadesSociales()
		{
			List<UEvaluacionInicial> respuesta = new LActividad().getListActivitysToInicialEvaluation(4);
			return Ok(respuesta);
		}

		[Route("GetResulActivity/{id_activity}/{id_card_patient}")]
		[HttpGet]
		public IHttpActionResult GetResulActivity(int id_activity, string id_card_patient)
		{
			try
			{

				List<PacienteScoreJSon> respuesta = new LActividad().getResultActivity(id_activity, id_card_patient);
				if (respuesta != null)
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


		[Route("GetScoreImitationActivity/{phrases_base}/{phrases_said}")]
		[HttpGet]
		public IHttpActionResult GetScoreImitationActivity(string phrases_base, string phrases_said)
		{
			try
			{
				return Ok(new LActividad().getScoreActivityImitation(phrases_base, phrases_said));
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());
			}
		}

		
		[Route("PostGuardarResultadosEvaluacionInicial")]
		[HttpPost]
		public IHttpActionResult PostGuardarResultadosEvaluacionInicial(UResultadoEvaluacionInicial[] actividadE)
		{
			try
			{
				return Ok(new LActividad().guardarResultados(actividadE)); 
			}
			catch (Exception ex)
			{
				return BadRequest("surgio el siguente error: " + ex.Message.ToString());


			}
		}

	}
}