using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Utilitarios
{
	[Serializable]
	[Table("usuario", Schema = "usuarios")]
	public class UUsers
	{
		private int id;
		private String documento;
		private String clave;
		private int rol_id;
		private String sesion;

		[Key]
		[Column("id_usuario")]
		public int Id { get => id; set => id = value; }
		[Column("numero_documento")]
		public string Documento { get => documento; set => documento = value; }
		[Column("clave_usuario")]
		public string Clave { get => clave; set => clave = value; }
		[Column("tipo_usuario_id")]
		public int Rol_id { get => rol_id; set => rol_id = value; }

		[NotMapped]
		public string Sesion { get => sesion; set => sesion = value; }
	}
}