using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
	[Serializable]
	[Table("paciente", Schema ="usuarios")]
	public class UPaciente
	{
		private int paciente_id;
		private String nombre_paciente;
		private String apellido_paciente;
		private String numero_documento;
		private int grado_autismo;
		private int edad;
		private String cedula_docente;
		private String cedula_acudiente;
		private int institucion_id;
		private String clave;


		[Key]
		[Column("id_paciente")]
		public int Paciente_id { get => paciente_id; set => paciente_id = value; }
		[Column("nombre_paciente")]
		public string Nombre_paciente { get => nombre_paciente; set => nombre_paciente = value; }
		[Column("apellido_paciente")]
		public string Apellido_paciente { get => apellido_paciente; set => apellido_paciente = value; }
		[Column("numero_documento")]
		public string Numero_documento { get => numero_documento; set => numero_documento = value; }
		[Column("grado_autismo")]
		public int Grado_autismo { get => grado_autismo; set => grado_autismo = value; }
		[Column("edad")]
		public int Edad { get => edad; set => edad = value; }
		[Column("cedula_docente")]
		public string Cedula_docente { get => cedula_docente; set => cedula_docente = value; }
		[Column("cedula_acudiente")]
		public string Cedula_acudiente { get => cedula_acudiente; set => cedula_acudiente = value; }
		[Column("id_institucion")]
		public int Institucion_id { get => institucion_id; set => institucion_id = value; }


		[NotMapped]
		public string Clave { get => clave; set => clave = value; }
	}
}
