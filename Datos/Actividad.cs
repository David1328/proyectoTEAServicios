﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
    public class Actividad : Mapping
    {

        public int verificarCantidadMaximaActividadesPorDocente(UActividad actividadE)
        {
            return new Mapping().actividad.Where(x => (x.Docente_creador.Equals(actividadE.Docente_creador))).Count();
        }
        public void agregarActividad(UActividad actividadE)
        {

            using (var db = new Mapping())
            {
                db.actividad.Add(actividadE);
                db.SaveChanges();
            }
        }

        public List<UActividad> listaActividadesDocente(UActividad idDocente)
        {
            using (var db = new Mapping())
            {
				List<UActividad> lista = (from a in db.actividad
										  join tp in db.uTipoActividads on a.Tipo_actividad equals tp.Id_tp_actividad
										  where a.Docente_creador == idDocente.Docente_creador

										  select new
										  {
											  a,
											  tp
										  }).ToList().Select(m => new UActividad
										  {
											  Id_actividad = m.a.Id_actividad,
											  NombreActividad = m.a.NombreActividad,
											  Descripcion = m.a.Descripcion,
											  Contenido_actividad = m.a.Contenido_actividad,
											  Tipo_actividad_texto = m.tp.ActividadNombre
										  }).ToList();
				return lista;
			}
        }
		public void eliminarActividad(int actividad_id)
		{
			using (var db = new Mapping())
			{

				UActividad actividadAEliminar = db.actividad.Where(x => x.Id_actividad.Equals(actividad_id)).FirstOrDefault();
				db.actividad.Attach(actividadAEliminar);
				var elimina = db.Entry(actividadAEliminar);
				elimina.State = EntityState.Deleted;
				db.SaveChanges();

			}
		}


		public UActividad getActivityId(int activity_id)
		{
			using (var db = new Mapping())
			{

				return db.actividad.Where(x => x.Id_actividad.Equals(activity_id)).FirstOrDefault();

			}
		}

		public List<UTipoActividad> getTypeActivity()
		{
			return new Mapping().uTipoActividads.ToList();
		}


		public string putActividad(UActividad actividadHecha)
		{
			using (var db = new Mapping())
			{
				UActividad actividadActualizar = db.actividad.Where(x => x.Id_actividad.Equals(actividadHecha.Id_actividad)).FirstOrDefault();
				if (actividadActualizar.EstudiantesHicieronActividad != null)
				{


					List<PacienteScoreJSon> pacientesEnLaActividad = JsonConvert.DeserializeObject<List<PacienteScoreJSon>>(actividadActualizar.EstudiantesHicieronActividad);
					pacientesEnLaActividad.Add(actividadHecha.NuevoEstudiante);

					actividadActualizar.EstudiantesHicieronActividad = JsonConvert.SerializeObject(pacientesEnLaActividad, Formatting.Indented, new JsonSerializerSettings
					{
						NullValueHandling = NullValueHandling.Ignore
					});
				}
				else
				{
					List<PacienteScoreJSon> pacientesEnLaActividad = new List<PacienteScoreJSon>();
					pacientesEnLaActividad.Add(actividadHecha.NuevoEstudiante);
					actividadActualizar.EstudiantesHicieronActividad = JsonConvert.SerializeObject(pacientesEnLaActividad, Formatting.Indented, new JsonSerializerSettings
					{
						NullValueHandling = NullValueHandling.Ignore
					});
				}
				var enty = db.Entry(actividadActualizar);
				enty.State = EntityState.Modified;
				db.SaveChanges();
				return "Se guardo el estudiante dentro de la actividad";
			}
		}
	}
}
