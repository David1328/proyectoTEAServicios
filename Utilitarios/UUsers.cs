using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Utilitarios
{
	[Serializable]
	[Table("usuario", Schema ="usuarios")]
	public class UUsers
	{
		private int usuario_id;
		private String nombre_usuario;
		private String apellido_usuario;
		private String numero_documento;
		private String clave_usuario;
		private String usuario;
		private int rol_usuario_id;

		[Key]
		[Column("id_usuario")]
		public int Usuario_id { get => usuario_id; set => usuario_id = value; }
		[Column("nombre_usuario")]
		public string Nombre_usuario { get => nombre_usuario; set => nombre_usuario = value; }
		[Column("apellido_usuario")]
		public string Apellido_usuario { get => apellido_usuario; set => apellido_usuario = value; }
		[Column("numero_documento")]
		public string Numero_documento { get => numero_documento; set => numero_documento = value; }
		[Column("clave_usuario")]
		public string Clave_usuario { get => clave_usuario; set => clave_usuario = value; }
		[Column("usuario")]
		public string Usuario { get => usuario; set => usuario = value; }
		[Column("rol_usuario_id")]
		public int Rol_usuario_id { get => rol_usuario_id; set => rol_usuario_id = value; }
	}
}
