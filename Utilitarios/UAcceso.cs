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
    [Table("acceso", Schema = "seguridad")]

    public class UAcceso
    {
        private int id_acceso;
        private int id_usuario;
        private DateTime fecha_inicioSesion;
        private Nullable<DateTime> fecha_finSesion;
        private string sesion;

        [Key]
        [Column("id_acceso")]
        public int Id_acceso { get => id_acceso; set => id_acceso = value; }
        [Column("id_usuario")]
        public int Id_usuario { get => id_usuario; set => id_usuario = value; }
        [Column("fecha_inicioSesion")]
        public DateTime Fecha_inicioSesion { get => fecha_inicioSesion; set => fecha_inicioSesion = value; }
        [Column("fecha_finSesion")]
        public Nullable<DateTime> Fecha_finSesion { get => fecha_finSesion; set => fecha_finSesion = value; } 

        [Column("sesion")]
        public string Sesion { get => sesion; set => sesion = value; }

    }
}
