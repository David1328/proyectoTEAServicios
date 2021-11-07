using Utilitarios;

namespace LogicaDeNegocio
{
	public class LUserRegistercs
	{

		public void agregarUsuario(UUsers nuevoUsuario)
		{
			new Datos.UsersRegister().agregarUsuario(nuevoUsuario);
		}

	}
}
