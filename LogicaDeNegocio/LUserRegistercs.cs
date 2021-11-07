using System;
using Utilitarios;

namespace LogicaDeNegocio
{
	public class LUserRegistercs
	{

		public String agregarUsuario(UUsers nuevoUsuario)
		{
			try
			{
				Wraper wraper = new Wraper();

                if ((new Datos.UsersRegister().verificarTipoDeRolId(nuevoUsuario)) == null)
                {
					return wraper.Mensaje = "Rol no existe";
                }
                else
                {
					if ((new Datos.UsersRegister().verificarExistenciaDeCedulaRespectoIdRol(nuevoUsuario)) == null)
					{
						new Datos.UsersRegister().agregarUsuario(nuevoUsuario);
						return wraper.Mensaje = "Registrado con exito";

					}
					else if ((new Datos.UsersRegister().verificarExistenciaDeCedulaRespectoIdRol(nuevoUsuario)) != null)
					{
						return wraper.Mensaje = "Este usuario ya existe";
					}
					else
					{
						return "error no validado";
					}
				}
			}
			catch (Exception e)
			{
				return "error: "+e;
			}
		}

	}
}
