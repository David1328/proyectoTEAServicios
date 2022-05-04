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

		//                   En esta zona se van actualizaran los usuarios
		//Actualizar Docente
		public String putActualizarDocente(UDocente nuevoDocente)
		{
			try
			{
				Wraper wraper = new Wraper();
				//Actualizar el nombre y apellido
				if (nuevoDocente.Nombre != null && nuevoDocente.Apellido != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarDocente(nuevoDocente, 1);
				}
				//Actualizar la clave
				else if (nuevoDocente.Clave != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarDocente(nuevoDocente, 2);
				}
				//Actualizar el correo
				else if (nuevoDocente.Correo != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarDocente(nuevoDocente, 3);
				}
				//No existe opción
				else
				{
					wraper.Mensaje = "Actualización invalida";
				}
				return wraper.Mensaje;
			}
			catch (Exception e)
			{
				return "error: " + e;
			}
		}
		//Actualizar Acudiente
		public String putActualizarAcudiente(UAcudiente nuevoAcudiente)
		{
			try
			{
				Wraper wraper = new Wraper();
				//Actualizar el nombre y apellido
				if (nuevoAcudiente.Nombre != null && nuevoAcudiente.Apellido != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarAcudiente(nuevoAcudiente, 1);
				}
				//Actualizar la clave
				else if (nuevoAcudiente.Clave != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarAcudiente(nuevoAcudiente, 2);
				}
				//Actualizar el correo
				else if (nuevoAcudiente.Correo != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarAcudiente(nuevoAcudiente, 3);
				}
				//No existe opción
				else
				{
					wraper.Mensaje = "Actualización invalida";
				}
				return wraper.Mensaje;
			}
			catch (Exception e)
			{
				return "error: " + e;
			}
		}


		//Actualizar Paciente
		public String putActualizarPaciente(UPaciente nuevoPaciente)
		{
			try
			{
				Wraper wraper = new Wraper();
				//Actualizar el nombre y apellido
				if (nuevoPaciente.Nombre != null && nuevoPaciente.Apellido != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarPaciente(nuevoPaciente, 1);
				}
				//Actualizar la clave
				else if (nuevoPaciente.Clave != null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarPaciente(nuevoPaciente, 2);
				}
				//Actualizar el grado de autismo y edad
				else if (nuevoPaciente.Grado_autismo !=null && nuevoPaciente.Edad!=null)
				{
					wraper.Mensaje = new UsersRegister().putActualizarPaciente(nuevoPaciente, 3);
				}
				//No existe opción
				else
				{
					wraper.Mensaje = "Actualización invalida";
				}
				return wraper.Mensaje;
			}
			catch (Exception e)
			{
				return "error: " + e;
			}
		}

	}
}
