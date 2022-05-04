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
		private String nombre;
		private String apellido;
		private String documento;
		private int grado_autismo;
		private int edad;
		private String documento_docente;
		private String documento_acudiente;
		private int institucion_id;
		private String clave;
		private String clave_actual;


		[Key]
		[Column("id_paciente")]
		public int Paciente_id { get => paciente_id; set => paciente_id = value; }
		[Column("nombre_paciente")]
		public string Nombre { get => nombre; set => nombre = value; }
		[Column("apellido_paciente")]
		public string Apellido { get => apellido; set => apellido = value; }
		[Column("numero_documento")]
		public string Documento { get => documento; set => documento = value; }
		[Column("grado_autismo")]
		public int Grado_autismo { get => grado_autismo; set => grado_autismo = value; }
		[Column("edad")]
		public int Edad { get => edad; set => edad = value; }
		[Column("cedula_docente")]
		public string Documento_docente { get => documento_docente; set => documento_docente = value; }
		[Column("cedula_acudiente")]
		public string Documento_acudiente { get => documento_acudiente; set => documento_acudiente = value; }
		[Column("id_institucion")]
		public int Institucion_id { get => institucion_id; set => institucion_id = value; }


		[NotMapped]
		public string Clave { get => clave; set => clave = value; }
		[NotMapped]
		public string Clave_actual { get => clave_actual; set => clave_actual = value; }
	}
}
