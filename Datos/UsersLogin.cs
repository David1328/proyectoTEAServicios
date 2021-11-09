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

        public UUsers verificarExistenciaUsuario(UUsers usuarioE)
        {
            return new Mapping().user.Where(x => (x.Numero_documento.Equals(usuarioE.Numero_documento))).FirstOrDefault();
        }
        public UUsers verificarLogin(UUsers usuarioE)
        {

            return new Mapping().user.Where(x => (x.Numero_documento.Equals(usuarioE.Numero_documento)) && (x.Clave_usuario.Equals(usuarioE.Clave_usuario))).FirstOrDefault();
        }

        public URol verificarTipoDeRolId(UUsers nuevoUsuario)
        {
            return new Mapping().rol.Where(x => x.Id_rol.Equals(nuevoUsuario.Rol_usuario_id)).FirstOrDefault();
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
