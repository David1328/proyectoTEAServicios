using Utilitarios;

namespace Datos
{
	public class UsersRegister
	{

		public void agregarUsuario(UUsers nuevoUsuario)
		{
			using (var db = new Mapping()) {
				db.user.Add(nuevoUsuario);
				db.SaveChanges();
			}
		}

	}
}
