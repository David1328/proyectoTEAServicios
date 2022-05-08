using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    [Table("evaluacion_inicial", Schema = "actividades")]

    public class UEvaluacionInicial
    {
        private int id;
        private string imagen;
        private string video;
        private string lectura;
        private string audio1;
        private string audio2;
        private string audio3;
        private int tipoActividad;
        private int idActividad;
        [NotMapped]
        private int id_usuario;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("imagen")]
        public string Imagen { get => imagen; set => imagen = value; }
        [Column("video")]
        public string Video { get => video; set => video = value; }
        [Column("lectura")]
        public string Lectura { get => lectura; set => lectura = value; }
        [Column("audio1")]
        public string Audio1 { get => audio1; set => audio1 = value; }
        [Column("audio2")]
        public string Audio2 { get => audio2; set => audio2 = value; }
        [Column("audio3")]
        public string Audio3 { get => audio3; set => audio3 = value; }
        [Column("tipoActividad")]
        public int TipoActividad { get => tipoActividad; set => tipoActividad = value; }
        [Column("idActividad")]
        public int IdActividad { get => idActividad; set => idActividad = value; }

    }
}
