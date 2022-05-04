using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Utilitarios
{
	[Table("actividad", Schema = "actividades")]

	public class UActividad
	{
		private int id_actividad;
		private string nombreActividad;
		private string descripcion;
		private string docente_creador;
		private string contenido_actividad;
		private int tipo_actividad;
		private string estudiantesHicieronActividad;
		private PacienteScoreJSon nuevoEstudiante;
		private string tipo_actividad_texto;
		private int estado_id;

		[Key]
		[Column("id_actividad")]
		public int Id_actividad { get => id_actividad; set => id_actividad = value; }

		[Column("nombre_actividad")]
		public string NombreActividad { get => nombreActividad; set => nombreActividad = value; }
		[Column("descripcion")]
		public string Descripcion { get => descripcion; set => descripcion = value; }
		[Column("docente_creador")]
		public string Docente_creador { get => docente_creador; set => docente_creador = value; }
		[Column("contenido_actividad")]
		public string Contenido_actividad { get => contenido_actividad; set => contenido_actividad = value; }
		[Column("tipo_actividad")]
		public int Tipo_actividad { get => tipo_actividad; set => tipo_actividad = value; }
		[Column("estudiantes")]
		public string EstudiantesHicieronActividad { get => estudiantesHicieronActividad; set => estudiantesHicieronActividad = value; }
		[Column("estado_id")]
		public int Estado_id { get => estado_id; set => estado_id = value; }


		[NotMapped]
		public string Tipo_actividad_texto { get => tipo_actividad_texto; set => tipo_actividad_texto = value; }
		[NotMapped]
		public PacienteScoreJSon NuevoEstudiante { get => nuevoEstudiante; set => nuevoEstudiante = value; }
	}
}
