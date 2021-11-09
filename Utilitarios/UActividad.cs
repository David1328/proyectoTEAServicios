using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    [Table("actividad", Schema = "actividades")]

    public class UActividad
    {
        private int id_actividad;
        private string titulo;
        private string descripcion;
        private string docente_creador;

        [Key]
        [Column("id_actividad")]
        public int Id_actividad { get => id_actividad; set => id_actividad = value; }

        [Column("titulo")]
        public string Titulo { get => titulo; set => titulo = value; }
        [Column("descripcion")]
        public string Descripcion { get => descripcion; set => descripcion = value; }

        [Column("docente_creador")]
        public string Docente_creador { get => docente_creador; set => docente_creador = value; }

    }
}
