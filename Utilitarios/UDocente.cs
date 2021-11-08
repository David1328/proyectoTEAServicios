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
		private String cedula;
		private String nombre_docente;
		private String apellido_docente;
		private String nit;
		private int institucion_id;
		private String correo;
		private String clave;

		[Key]
		[Column("id_docente")]
		public int Docente_id { get => docente_id; set => docente_id = value; }
		[Column("cedula")]
		public string Cedula { get => cedula; set => cedula = value; }
		[Column("nombre_docente")]
		public string Nombre_docente { get => nombre_docente; set => nombre_docente = value; }
		[Column("apellido_docente")]
		public string Apellido_docente { get => apellido_docente; set => apellido_docente = value; }
		[Column("nit")]
		public string Nit { get => nit; set => nit = value; }
		[Column("id_institucion")]
		public int Institucion_id { get => institucion_id; set => institucion_id = value; }
		[Column("correo")]
		public string Correo { get => correo; set => correo = value; }

		[NotMapped]
		public string Clave { get => clave; set => clave = value; }
	}
}
