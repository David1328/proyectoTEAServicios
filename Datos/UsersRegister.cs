using System.Linq;
using Utilitarios;

namespace Datos
{
	public class UsersRegister
	{

		public void agregarUsuario(UUsers nuevoUsuario)
		{
			/*en registro el usuario sera el num de documento, luego se puede modificar*/
			nuevoUsuario.Usuario = nuevoUsuario.Numero_documento;
			using (var db = new Mapping()) {
				db.user.Add(nuevoUsuario);
				db.SaveChanges();
			}
		}

		public UUsers verificarExistenciaDeCedulaRespectoIdRol(UUsers nuevoUsuario)
        {
			return new Mapping().user.Where(x => (x.Numero_documento.Equals(nuevoUsuario.Numero_documento)) && (x.Rol_usuario_id.Equals(nuevoUsuario.Rol_usuario_id))).FirstOrDefault();
        }

		
		public URol verificarTipoDeRolId(UUsers nuevoUsuario)
        {
			return new Mapping().rol.Where(x => x.Id_rol.Equals(nuevoUsuario.Rol_usuario_id)).FirstOrDefault();
        }

	}
}
