using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Utilitarios
{
	[Table("estado_actividad", Schema = "actividades")]
	public class UEstado_actividad
	{

		private int estado_id;
		private string estado_actividad;

		[Key]
		[Column("estado_id")]
		public int Estado_id { get => estado_id; set => estado_id = value; }

		[Column("estado_actividad")]
		public string Estado_actividad { get => estado_actividad; set => estado_actividad = value; }
	}
}
