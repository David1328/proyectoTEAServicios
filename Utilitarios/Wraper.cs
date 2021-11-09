using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    public class Wraper
    {
        private string mensaje;
        private UUsers wraperUsuario;
        private string token;

        public string Mensaje { get => mensaje; set => mensaje = value; }
        public UUsers WraperUsuario { get => wraperUsuario; set => wraperUsuario = value; }

        public string Token { get => token; set => token = value; }
    }
}
