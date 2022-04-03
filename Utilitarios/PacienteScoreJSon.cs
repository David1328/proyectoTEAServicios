using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
	public class PacienteScoreJSon
	{
		private String documentoPaciente;
		private String score;
		private DateTime fechaRealizacion;

		public string DocumentoPaciente { get => documentoPaciente; set => documentoPaciente = value; }
		public string Score { get => score; set => score = value; }
		public DateTime FechaRealizacion { get => fechaRealizacion; set => fechaRealizacion = value; }
	}
}
