using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace LogicaDeNegocio
{
    public class LActividad
    {
        public List<UActividad> listaActividades(int rol,string id_card)
        {
			UActividad idDocente = new UActividad();
			if (rol==2){
				UPaciente pacientInformation = new UserPaciente().getPatientInformation(id_card);
				idDocente.Docente_creador = pacientInformation.Documento_docente;
			}
			else
			{
				idDocente.Docente_creador = id_card;
			}
            return new Datos.Actividad().listaActividadesDocente(idDocente);
        }
		public UActividad getActivityId(int id_activity)
		{
			return new Datos.Actividad().getActivityId(id_activity);
		}

        public Wraper agregarActividad(UActividad actividadE)
        {
            Wraper wp = new Wraper();
            try
            {
                int cantidadActividades = new Datos.Actividad().verificarCantidadMaximaActividadesPorDocente(actividadE);
                int cantidadMaxima = 4;
                if (cantidadActividades >= cantidadMaxima)
                {
                    wp.Mensaje = "Cantidad actividades maximas (" + cantidadMaxima + ") alcanzado";
                    return wp;
                }
                else
                {
                    wp.Mensaje = "Actividad agregada con exito";
                    new Datos.Actividad().agregarActividad(actividadE);

                    return wp;
                }
            }
            catch (Exception e)
            {
                wp.Mensaje = "error:" + e;
                return wp;
            }
        }

		public string eliminarActividad(int id_actividad)
		{
			new Datos.Actividad().eliminarActividad(id_actividad);
			return "Actividad eliminada";
		}

		public List<UTipoActividad> getTypeActivity()
		{
			return new Datos.Actividad().getTypeActivity();
		}

		public string putActividadEstudiante(UActividad actividadRealizada)
		{
			return new Datos.Actividad().putActividad(actividadRealizada);
		}

		public List<UPaciente> getAcivitysDidByPatientForAttendant(int id_activity,string id_card_attendant)
		{
			UPaciente pacientInformation = new UserPaciente().getPatientInformation(id_card_attendant);
			return new Actividad().getAcivitysDidByPatientForAttendant(id_activity,pacientInformation.Documento);
		}

		public List<UPaciente> getAcivitysDidByPatientForTeacher(int id_activity,string id_card_teacher)
		{
			return new Actividad().getAcivitysDidByPatientForTeacher(id_activity, id_card_teacher);
		}

		public List<UEvaluacionInicial> getListActivitysToInicialEvaluation(int identificador)
        {
			Random random = new Random();
			int[] activities = new int[3];
			int randomnum;
			bool exist;
			for (int i = 0; i < 3; i++)
            {
				randomnum = random.Next(1, 11);
				exist = Array.Exists(activities, x => x == randomnum);
                while (exist)
                {
					randomnum = random.Next(randomnum + 1, 12);
					exist = Array.Exists(activities, x => x == randomnum);
				}
				if (exist==false)
                {
					activities[i] = randomnum;
				}
            }
			return new Actividad().getListActivitysToInicialEvaluation(activities, identificador);
        }
		public List<PacienteScoreJSon> getResultActivity(int id_activity, string id_card_patient)
		{
			return new Datos.Actividad().GetPacienteScoreJSons(id_activity, id_card_patient);
		}

	}
}
