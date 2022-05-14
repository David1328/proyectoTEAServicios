using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Utilitarios
{
    [Serializable]
    [Table("actividad_pecs_categorias", Schema = "actividades")]
    public class UActividadPecsCategorias
    {
        private int id;
        //documento
        private String id_estudiante;
        private String color;
        //documento
        private String id_docente;
        private int categoria_id;
        private String categoria;
        private int estado_id;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }

        [Column("id_estudiante")]
        public string Id_estudiante { get => id_estudiante; set => id_estudiante = value; }
        [Column("color")]
        public string Color { get => color; set => color = value; }
        [Column("id_docente")]
        public string Id_docente { get => id_docente; set => id_docente = value; }

        [Column("categoria_id")]
        public int Categoria_id { get => categoria_id; set => categoria_id = value; }

        [Column("categoria")]
        public string Categoria { get => categoria; set => categoria = value; }
        [Column("estado_id")]
        public int Estado_id { get => estado_id; set => estado_id = value; }
    }
}
