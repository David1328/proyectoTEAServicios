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
    [Table("rol_usuario", Schema = "usuarios")]
    public class URol
    {
        private int id_rol;
        private string nombre_rol;


        [Key]
        [Column("id_rol")]
        public int Id_rol { get => id_rol; set => id_rol = value; }
        [Column("nombre_rol")]
        public string Nombre_rol { get => nombre_rol; set => nombre_rol = value; }
    }
}
