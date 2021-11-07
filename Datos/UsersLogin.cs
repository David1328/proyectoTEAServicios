using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
    public class UsersLogin
    {
        public UUsers verificarLogin(UUsers usuarioE)
        {

            return new Mapping().user.Where(x => (x.Usuario.Equals(usuarioE.Usuario)) && (x.Clave_usuario.Equals(usuarioE.Clave_usuario))).FirstOrDefault();
        }

        public void agregarAcceso(UAcceso accesoUsuarioE)
        {
            using (var db = new Mapping()) {
                db.acceso.Add(accesoUsuarioE);
                db.SaveChanges();
            }
        }

    }
}
