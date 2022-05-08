using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    [Table("resultados_evaluacion_inicial", Schema = "actividades")]
    public class UResultadoEvaluacionInicial
    {
        private int id;
        private string id_usuario;
        private bool valuacion;
        private string respuesta_seleccionada;
        private int modulo;
        private DateTime fecha;

        [Key]
        [Column("id")]
        public int Id { get => id; set => id = value; }
        [Column("id_usuario")]
        public string Id_usuario { get => id_usuario; set => id_usuario = value; }
        [Column("valuacion")]
        public bool Valuacion { get => valuacion; set => valuacion = value; }
        [Column("respuesta_seleccionada")]
        public string Respuesta_seleccionada { get => respuesta_seleccionada; set => respuesta_seleccionada = value; }
        [Column("modulo")]
        public int Modulo { get => modulo; set => modulo = value; }
        [Column("fecha")]
        public DateTime Fecha { get => fecha; set => fecha = value; }

    }
}

