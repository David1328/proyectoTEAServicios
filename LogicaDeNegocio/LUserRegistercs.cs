using System;
using Utilitarios;

namespace LogicaDeNegocio
{
	public class LUserRegistercs
	{

		public String agregarUsuarioAcudiente(UAcudiente nuevoAcudiente)
		{
			try
			{
				Wraper wraper = new Wraper();
				//Objeto la tabla usuario
				UUsers nuevoUsuario = new UUsers();
				nuevoUsuario.Numero_documento = nuevoAcudiente.Cedula;
				nuevoUsuario.Clave_usuario = nuevoAcudiente.Clave;
				nuevoUsuario.Rol_usuario_id = 2;
				//Validaciones para la creacion de los objetos
				if ((new Datos.UsersRegister().verificarExistenciaDeCedulaRespectoIdRol(nuevoUsuario)) == null && !(new Datos.UsersRegister().revisarExistenciaDeCorreo(nuevoAcudiente.Correo)))
				{
					new Datos.UsersRegister().agregarUsuario(nuevoUsuario);
					new Datos.UsersRegister().agregarAcudiente(nuevoAcudiente);
					return wraper.Mensaje = "Registrado con exito";
				}
				else
				{
					return wraper.Mensaje = "Este usuario ya existe";
				}
			}
			catch (Exception e)
			{
				return "error: "+e;
			}
		}

		public String agregarUsuarioDocente(UDocente nuevoDocente)
		{
			try
			{
				Wraper wraper = new Wraper();
				//Objeto la tabla usuario
				UUsers nuevoUsuario = new UUsers();
				nuevoUsuario.Numero_documento = nuevoDocente.Cedula;
				nuevoUsuario.Clave_usuario = nuevoDocente.Clave;
				nuevoUsuario.Rol_usuario_id = 1;
				//Validaciones para la creacion de los objetos
				if ((new Datos.UsersRegister().verificarExistenciaDeCedulaRespectoIdRol(nuevoUsuario)) == null && !(new Datos.UsersRegister().revisarExistenciaDeCorreo(nuevoDocente.Correo)))
				{
					new Datos.UsersRegister().agregarUsuario(nuevoUsuario);
					new Datos.UsersRegister().agregarDocente(nuevoDocente);
					return wraper.Mensaje = "Registrado con exito";
				}
				else 
				{
					return wraper.Mensaje = "Este usuario ya existe";
				}
			}
			catch (Exception e)
			{
				return "error: " + e;
			}
		}
		public String agregarUsuarioPaciente(UPaciente nuevoPaciente)
		{
			/*try
			{*/
				Wraper wraper = new Wraper();
				//Objeto la tabla usuario
				UUsers nuevoUsuario = new UUsers();
				nuevoUsuario.Numero_documento = nuevoPaciente.Numero_documento;
				nuevoUsuario.Clave_usuario = nuevoPaciente.Clave;
				nuevoUsuario.Rol_usuario_id = 3;
				//Validaciones para la creacion de los objetos
				if ((new Datos.UsersRegister().verificarExistenciaDocumentoPaciente(nuevoUsuario)) == null)
				{
					if (nuevoPaciente.Cedula_acudiente != null || nuevoPaciente.Cedula_docente != null)
					{
						new Datos.UsersRegister().agregarUsuario(nuevoUsuario);
						new Datos.UsersRegister().agregarPaciente(nuevoPaciente);
						return wraper.Mensaje = "Registrado con exito";
					}else
					{
						return wraper.Mensaje = "Hace falta la cedula";
					}
				}
				else
				{
					return wraper.Mensaje = "Este usuario ya existe";
				}
			/*}
			catch (Exception e)
			{
				return "error: " + e;
			}*/
		}
	}
}
