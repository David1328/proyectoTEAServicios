using Datos;
using System;
using System.Collections.Generic;
using Utilitarios;

namespace LogicaDeNegocio
{
    public class LActividad
    {
        public List<UActividad> listaActividades(int rol,string id_card)
        {
			UActividad idDocente = new UActividad();
			switch (rol)
			{
				case 1:
					idDocente.Docente_creador = id_card;
					break;
				case 2:
					UPaciente pacientInformation = new UserPaciente().getPatientInformation(id_card);
					idDocente.Docente_creador = pacientInformation.Documento_docente;
					break;
				case 3:
					idDocente.Docente_creador = id_card;
					return new Datos.Actividad().listaActividadesDocente(idDocente).FindAll(x => x.Estado_id == 1);
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
					actividadE.Estado_id = 1;
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

		public string activarODesactivarActividad(int id_actividad)
		{
			return new Datos.Actividad().desactivivarOActivarActividad(id_actividad);
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
		
		//Metodo para obtener el score de una actividad de imitacion 
		public float getScoreActivityImitation(string phrases_base, string phrases_said)
		{
			phrases_base = phrases_base.ToLower();
			phrases_said = phrases_said.ToLower();
			string phrases_base_without_spaci = quitarEspaciosYCaracteresEspeciales(phrases_base);
			string phrases_said_without_spaci = quitarEspaciosYCaracteresEspeciales(phrases_said);
			int cantidadMinima = phrases_base_without_spaci.Length <= phrases_said_without_spaci.Length ? phrases_base_without_spaci.Length : phrases_said_without_spaci.Length;
			//El siguiente metodo verifica que la cantidad de letras sea la que debe ser
			float filtroCantidad = filtroCantidadDePalabras(phrases_base, phrases_said);
			float filtroVecinosCerca = kneiborNear(phrases_base, phrases_said);
			float filtroPosicion = porcentrajeDeAcertividad(phrases_said_without_spaci, phrases_base_without_spaci, cantidadMinima);
			float scoreTotal = (filtroCantidad + filtroVecinosCerca + filtroPosicion) / 3;


			return scoreTotal*100;

		}
		//Este filtro nos permite retornar cuento es el porcentaje de cantidad de palabras
		private float filtroCantidadDePalabras(string phrases_base, string phrases_said)
		{
			float phrases_base_length = float.Parse(phrases_base.Length.ToString());
			float phrases_said_length = float.Parse(phrases_said.Length.ToString());

			if (phrases_base.Length<phrases_said.Length)
			{
				return phrases_base_length / phrases_said_length;
			}else if (phrases_base.Length > phrases_said.Length)
			{
				return phrases_said_length / phrases_base_length;
			}else
			{
				return phrases_base_length / phrases_said_length;
			}
		}
		//Este filtro nos da el porcentaje de cercania de los vecinos 

		private float kneiborNear(string phrases_base, string phrases_said)
		{
			List<string> phrases_base_list = new List<string>();
			List<string> phrases_said_list = new List<string>();
			float cantDeVecinosAcertados = 0;


			phrases_base_list = fillListWithKneibor(phrases_base);
			phrases_said_list = fillListWithKneibor(phrases_said);

			foreach(string vecino in phrases_said_list)
			{
				if (phrases_base_list.Contains(vecino))
				{
					cantDeVecinosAcertados++;
				}
			}

			return cantDeVecinosAcertados / phrases_base.Length;

		}
		//Este metodo nos obtiene las convinaciones de los vecinos cercanos
		private List<string> fillListWithKneibor(string phrase)
		{

			List<string> answear = new List<string>();

			string vecino = ((phrase.ToCharArray())[0]).ToString() + ((phrase.ToCharArray())[1]).ToString();
			answear.Add(vecino);

			for (int i = 1; i < phrase.Length - 1; i++)
			{
				vecino = ((phrase.ToCharArray())[i - 1]).ToString() + ((phrase.ToCharArray())[i]).ToString() + ((phrase.ToCharArray())[i + 1]).ToString();
				answear.Add(vecino);
			}
			vecino = ((phrase.ToCharArray())[phrase.Length - 2]).ToString() + ((phrase.ToCharArray())[phrase.Length-1]).ToString();
			answear.Add(vecino);

			return answear;

		}

		//Metodo que nos permite quitar los caracteres y espacios
		private string quitarEspaciosYCaracteresEspeciales(string palabraAModificar){
			return palabraAModificar.Replace(@"[`~!@#$%^&*()_|+\-=?¡¿;:',.<>\{\}\[\]\\\/]+", "").Replace(" ", "");
		}

		//Metodos que según la posicion nos dice que tan ordenada estaba la frase dicha y la que debia decir
		private int porcentrajeDeAcertividad(string fraseDicha,string fraseAdecir, int cantidadMinimaDePalabras){
			var cant_acertada_de_letras = 0;
			var porcentaje = 0;
			for(var i=0;i<fraseAdecir.Length;i++){
				if (i<cantidadMinimaDePalabras){
					if ((fraseAdecir.ToCharArray())[i] == (fraseDicha.ToCharArray())[i]){
						cant_acertada_de_letras++;
					}
				} else{
					break;
				}
			}
			porcentaje =(cant_acertada_de_letras)/fraseAdecir.Length;
			return porcentaje;
		}

		//Permite guardar los resultados de la evaluacion inicial
		public string guardarResultados(UResultadoEvaluacionInicial[] actividadE)
		{
			for (var i = 1; i < actividadE.Length; i++)
			{
				actividadE[i].Fecha = DateTime.Now.Date;
				new Datos.Actividad().putInsertarresultado(actividadE[i]);
			}
			return "datos guardados";
		}

	}
}
