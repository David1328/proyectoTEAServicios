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
		private String nombre_acudiente;
		private String apellido_acudiente;
		private String cedula;
		private String correo;
		private String clave;


		[Key]
		[Column("id_acudiente")]
		public int Acudiente_id { get => acudiente_id; set => acudiente_id = value; }
		[Column("nombre_acudiente")]
		public string Nombre_acudiente { get => nombre_acudiente; set => nombre_acudiente = value; }
		[Column("apellido_acudiente")]
		public string Apellido_acudiente { get => apellido_acudiente; set => apellido_acudiente = value; }
		[Column("cedula")]
		public string Cedula { get => cedula; set => cedula = value; }
		[Column("correo")]
		public string Correo { get => correo; set => correo = value; }

		[NotMapped]
		public string Clave { get => clave; set => clave = value; }
	}
}
