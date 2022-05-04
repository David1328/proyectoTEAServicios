using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Utilitarios
{
	[Serializable]
	[Table("docente", Schema ="usuarios")]
	public class UDocente
	{
		private int docente_id;
		private String documento;
		private String nombre;
		private String apellido;
		private String nit;
		private int institucion_id;
		private String numero_documento_paciente;
		private String correo;
		private String clave;
		private String clave_actual;

		[Key]
		[Column("id_docente")]
		public int Docente_id { get => docente_id; set => docente_id = value; }
		[Column("cedula")]
		public string Documento { get => documento; set => documento = value; }
		[Column("nombre_docente")]
		public string Nombre { get => nombre; set => nombre = value; }
		[Column("apellido_docente")]
		public string Apellido { get => apellido; set => apellido = value; }
		[Column("nit")]
		public string Nit { get => nit; set => nit = value; }
		[Column("id_institucion")]
		public int Institucion_id { get => institucion_id; set => institucion_id = value; }
		[Column("correo")]
		public string Correo { get => correo; set => correo = value; }

		[NotMapped]
		public string Clave { get => clave; set => clave = value; }
		[NotMapped]
		public string Numero_documento_paciente { get => numero_documento_paciente; set => numero_documento_paciente = value; }
		[NotMapped]
		public string Clave_actual { get => clave_actual; set => clave_actual = value; }
	}
}
