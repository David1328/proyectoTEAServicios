using System;
using System.Data.Entity;
using System.Linq;
using Utilitarios;

namespace Datos
{
	public class UsersRegister
	{
		public UsersLogin UsersLogin
		{
			get => default(UsersLogin);
			set
			{
			}
		}

		public void agregarUsuario(UUsers nuevoUsuario)
		{
			/*en registro el usuario sera el num de documento, luego se puede modificar*/
			using (var db = new Mapping())
			{
				db.user.Add(nuevoUsuario);
				db.SaveChanges();
			}
		}

		public UUsers AcudienteODocenteExistente(string cedula, int rol)
		{
			return new Mapping().user.Where(x => (x.Documento.Equals(cedula) && x.Rol_id.Equals(rol))).FirstOrDefault();
		}


		public UUsers verificarExistenciaDeCedulaRespectoIdRol(UUsers nuevoUsuario)
		{
			return new Mapping().user.Where(x => (x.Documento.Equals(nuevoUsuario.Documento))).FirstOrDefault();
		}

		public UUsers verificarExistenciaDocumentoPaciente(UUsers nuevoPaciente)
		{
			return new Mapping().user.Where(x => (x.Documento.Equals(nuevoPaciente.Documento))).FirstOrDefault();
		}

		public void agregarAcudiente(UAcudiente nuevoAcudiente)
		{
			using (var db = new Mapping())
			{
				db.acudiente.Add(nuevoAcudiente);
				db.SaveChanges();
			}
		}
		public void agregarDocente(UDocente nuevoDocente)
		{
			using (var db = new Mapping())
			{
				db.docente.Add(nuevoDocente);
				db.SaveChanges();
			}
		}

		public void agregarPaciente(UPaciente nuevoPaciente)
		{
			using (var db = new Mapping())
			{
				db.paciente.Add(nuevoPaciente);
				db.SaveChanges();
			}
		}

		public bool revisarExistenciaDeCorreo(string correo)
		{
			bool existe = false;
			using (var db = new Mapping())
			{
				if ((db.docente.Where(x => (x.Correo.Equals(correo)))).FirstOrDefault() != null)
				{
					existe = true;
					return existe;
				}
				else if ((db.acudiente.Where(x => (x.Correo.Equals(correo)))).FirstOrDefault() != null)
				{
					existe = true;
					return existe;
				}
				else
				{
					return existe;
				}

			}
		}

		//Actualizar usuarios
		//Actualizar Docente
		public string putActualizarDocente(UDocente docenteNuevo, int tipoDeAcualizacion)
		{
			using (var db = new Mapping())
			{
				string respuesta = "Actualización de docente exitosa";
				UDocente docenteActualizar = db.docente.Where(x => x.Documento.Equals(docenteNuevo.Documento)).FirstOrDefault();
				UUsers docenteActual = db.user.Where(x => x.Documento.Equals(docenteNuevo.Documento) && x.Clave.Equals(docenteNuevo.Clave_actual)).FirstOrDefault();
				switch (tipoDeAcualizacion)
				{
					//PARA ACTUALIZAR NOMBRE Y APELLIDO
					case 1:
						docenteActualizar.Nombre = docenteNuevo.Nombre;
						docenteActualizar.Apellido = docenteNuevo.Apellido;
						break;
					//PARA ACTUALIZAR CONTRASEÑA
					case 2:
						if (docenteActual != null)
						{
							docenteActual.Clave = docenteNuevo.Clave;
							var entyC = db.Entry(docenteActual);
							entyC.State = EntityState.Modified;
							db.SaveChanges();
							return respuesta;
						}
						else
						{
							return "Las clave actual no coincide";
						}
					//PARA ACTUALIZAR CORREO
					case 3:
						docenteActualizar.Correo = docenteNuevo.Correo;
						break;
				}

				var enty = db.Entry(docenteActualizar);
				enty.State = EntityState.Modified;
				db.SaveChanges();
				return respuesta;
			}

		}
		//Actualizar Acudiente
		public string putActualizarAcudiente(UAcudiente acudienteNuevo, int tipoDeAcualizacion)
		{
			using (var db = new Mapping())
			{
				string respuesta = "Actualización de acudiente exitosa";
				UAcudiente acudienteActualizar = db.acudiente.Where(x => x.Documento.Equals(acudienteNuevo.Documento)).FirstOrDefault();
				UUsers acudienteActual = db.user.Where(x => x.Documento.Equals(acudienteNuevo.Documento) && x.Clave.Equals(acudienteNuevo.Clave_actual)).FirstOrDefault();
				switch (tipoDeAcualizacion)
				{
					//PARA ACTUALIZAR NOMBRE Y APELLIDO
					case 1:
						acudienteActualizar.Nombre = acudienteNuevo.Nombre;
						acudienteActualizar.Apellido = acudienteNuevo.Apellido;
						break;
					//PARA ACTUALIZAR CONTRASEÑA
					case 2:
						if (acudienteActual != null)
						{
							acudienteActual.Clave = acudienteNuevo.Clave;
							var entyC = db.Entry(acudienteActual);
							entyC.State = EntityState.Modified;
							db.SaveChanges();
							return respuesta;
						}
						else
						{
							return "Las clave actual no coincide";
						}
					//PARA ACTUALIZAR CORREO
					case 3:
						acudienteActualizar.Correo = acudienteNuevo.Correo;
						break;
				}

				var enty = db.Entry(acudienteActualizar);
				enty.State = EntityState.Modified;
				db.SaveChanges();
				return respuesta;
			}

		}
		//Actualizar Paciente
		public string putActualizarPaciente(UPaciente pacienteNuevo, int tipoDeAcualizacion)
		{
			using (var db = new Mapping())
			{
				string respuesta = "Actualización de paciente exitosa";
				UPaciente pacienteActualizar = db.paciente.Where(x => x.Documento.Equals(pacienteNuevo.Documento)).FirstOrDefault();
				UUsers pacienteActual = db.user.Where(x => x.Documento.Equals(pacienteNuevo.Documento) && x.Clave.Equals(pacienteNuevo.Clave_actual)).FirstOrDefault();
				switch (tipoDeAcualizacion)
				{
					//PARA ACTUALIZAR NOMBRE Y APELLIDO
					case 1:
						pacienteActualizar.Nombre = pacienteNuevo.Nombre;
						pacienteActualizar.Apellido = pacienteNuevo.Apellido;
						break;
					//PARA ACTUALIZAR CONTRASEÑA
					case 2:
						if (pacienteActual != null)
						{
							pacienteActual.Clave = pacienteNuevo.Clave;
							var entyC = db.Entry(pacienteActual);
							entyC.State = EntityState.Modified;
							db.SaveChanges();
							return respuesta;
						}
						else
						{
							return "Las clave actual no coincide";
						}
					//PARA ACTUALIZAR GRADO DE AUTISMO Y EDAD
					case 3:
						pacienteActualizar.Grado_autismo = pacienteNuevo.Grado_autismo;
						pacienteActualizar.Edad = pacienteNuevo.Edad;
						break;
				}

				var enty = db.Entry(pacienteActualizar);
				enty.State = EntityState.Modified;
				db.SaveChanges();
				return respuesta; 
			}

		}

		//Agregar token compra
		public Boolean agregarTokenCompra(UDocente datosDocenteCompra, string token)
		{
			using (var db = new Mapping())
			{

				//verifica si ya existe un token
				bool mensaje = false;

				int tokeExist = db.token_compra.Where(x => (x.User_id.Equals(datosDocenteCompra.Documento)) && (x.Fecha_vigencia > DateTime.Now ) && (x.Token != null)).Count();

                if (tokeExist >= 1)
                {
					//ya existe una licencia activa
					mensaje = false;
				}
                else if(tokeExist == 0)
                {
					UTokenCompra compraDatos = new UTokenCompra();
					compraDatos.User_id = datosDocenteCompra.Documento;
					compraDatos.Fecha_generado = DateTime.Now;
					compraDatos.Fecha_vigencia = DateTime.Now.AddDays(365);
					compraDatos.Token = token;
					db.token_compra.Add(compraDatos);
					db.SaveChanges();
					//crea una  nueva licencia
					mensaje = true;
				}

				return mensaje;

			}
		}

		public string generaTokenAleatorio()
        {
			var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+*/=!_-~";
			var Charsarr = new char[12];
			var random = new Random();
			for (int i = 0; i < Charsarr.Length; i++)
			{
				Charsarr[i] = characters[random.Next(characters.Length)];
			}

			var resultString = new String(Charsarr);

			return resultString;
		}
	}
}