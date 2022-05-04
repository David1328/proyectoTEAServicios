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
	[Table("acudiente", Schema = "usuarios")]
	public class UAcudiente
	{

		private int acudiente_id;
		private String nombre;
		private String apellido;
		private String documento;
		private String correo;
		private String clave;
		private String clave_actual;


		[Key]
		[Column("id_acudiente")]
		public int Acudiente_id { get => acudiente_id; set => acudiente_id = value; }
		[Column("nombre_acudiente")]
		public string Nombre { get => nombre; set => nombre = value; }
		[Column("apellido_acudiente")]
		public string Apellido { get => apellido; set => apellido = value; }
		[Column("cedula")]
		public string Documento { get => documento; set => documento = value; }
		[Column("correo")]
		public string Correo { get => correo; set => correo = value; }

		[NotMapped]
		public string Clave { get => clave; set => clave = value; }
		[NotMapped]
		public string Clave_actual { get => clave_actual; set => clave_actual = value; }
	}
}
