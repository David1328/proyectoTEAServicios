using Datos;
using System;
using System.Threading.Tasks;
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
				nuevoUsuario.Documento = nuevoAcudiente.Documento;
				nuevoUsuario.Clave = nuevoAcudiente.Clave;
				nuevoUsuario.Rol_id = 2;
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
				nuevoUsuario.Documento = nuevoDocente.Documento;
				nuevoUsuario.Clave = nuevoDocente.Clave;
				nuevoUsuario.Rol_id = 1;
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
			try
			{
				Wraper wraper = new Wraper();
				//Objeto la tabla usuario
				UUsers nuevoUsuario = new UUsers();
				nuevoUsuario.Documento = nuevoPaciente.Documento;
				nuevoUsuario.Clave = nuevoPaciente.Clave;
				nuevoUsuario.Rol_id = 3;
				UsersRegister buscar = new UsersRegister();
				//Validaciones para la creacion de los objetos
				if ((new Datos.UsersRegister().verificarExistenciaDocumentoPaciente(nuevoUsuario)) == null)
				{
					//(nuevoPaciente.Cedula_acudiente != null && (buscar.AcudienteODocenteExistente(nuevoPaciente.Cedula_acudiente,2)) != null) 
					if (nuevoPaciente.Documento_docente != null && (buscar.AcudienteODocenteExistente(nuevoPaciente.Documento_docente, 1)) != null)
					{
						new Datos.UsersRegister().agregarUsuario(nuevoUsuario);
						new Datos.UsersRegister().agregarPaciente(nuevoPaciente);
						return wraper.Mensaje = "Registrado con exito";
					}else
					{
						return wraper.Mensaje = "Hace falta la cedula o cedula no existente";
					}
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


		public async Task<UAcudiente> obtenerDatosAcudiente(string cedulaE)
        {
			UUsers usuario = new UUsers();
			UAcudiente acudiente = new UAcudiente();
			usuario.Documento = cedulaE;

			usuario = new Datos.UsersLogin().verificarExistenciaUsuario(usuario);

            if (usuario != null)
            {
				return acudiente = await new Datos.UsersLogin().datosAcudienteUsuarioSegunDocumento(cedulaE);
            }
            else
            {
				acudiente = null;
				return acudiente;
            }

		}

		public async Task<UDocente> obtenerDatosDocente(string cedulaE)
		{
			UUsers usuario = new UUsers();
			UDocente acudiente = new UDocente();
			usuario.Documento = cedulaE;

			usuario = new Datos.UsersLogin().verificarExistenciaUsuario(usuario);

			if (usuario != null)
			{
				return acudiente = await new Datos.UsersLogin().datosDocenteUsuarioSegunDocumento(cedulaE);
			}
			else
			{
				acudiente = null;
				return acudiente;
			}

		}

		public async Task<UPaciente> obtenerDatosPaciente(string cedulaE)
		{
			UUsers usuario = new UUsers();
			UPaciente acudiente = new UPaciente();
			usuario.Documento = cedulaE;

			usuario = new Datos.UsersLogin().verificarExistenciaUsuario(usuario);

			if (usuario != null)
			{
				return acudiente = await new Datos.UsersLogin().datosPacienteSegunDocumento(cedulaE);
			}
			else
			{
				acudiente = null;
				return acudiente;
			}

		}

	}
}
