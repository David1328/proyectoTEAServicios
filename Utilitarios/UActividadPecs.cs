using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Utilitarios
{
    [Serializable]
    [Table("actividad_pecs", Schema = "actividades")]
    public class UActividadPecs
    {
        private int id;
        private String imagen;
        private String texto_imagen;
        //documento
        private String id_estudiante;
        //documento
        private String id_docente;
        private int categoria_id;

        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("imagen")]
        public string Imagen { get => imagen; set => imagen = value; }
        [Column("texto_imagen")]
        public string Texto_imagen { get => texto_imagen; set => texto_imagen = value; }
        [Column("id_estudiante")]
        public string Id_estudiante { get => id_estudiante; set => id_estudiante = value; }
        [Column("id_docente")]
        public string Id_docente { get => id_docente; set => id_docente = value; }
        [Column("categoria_id")]
        public int Categoria_id { get => categoria_id; set => categoria_id = value; }
    }
}
