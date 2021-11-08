using System.Linq;
using Utilitarios;

namespace Datos
{
	public class UsersRegister
	{

		public void agregarUsuario(UUsers nuevoUsuario)
		{
			/*en registro el usuario sera el num de documento, luego se puede modificar*/
			using (var db = new Mapping()) {
				db.user.Add(nuevoUsuario);
				db.SaveChanges();
			}
		}

		public UUsers verificarExistenciaDeCedulaRespectoIdRol(UUsers nuevoUsuario)
        {
			return new Mapping().user.Where(x => (x.Numero_documento.Equals(nuevoUsuario.Numero_documento)) && (x.Rol_usuario_id.Equals(nuevoUsuario.Rol_usuario_id))).FirstOrDefault();
        }

		public UUsers verificarExistenciaDocumentoPaciente(UUsers nuevoPaciente)
		{
			return new Mapping().user.Where(x => (x.Numero_documento.Equals(nuevoPaciente.Numero_documento))).FirstOrDefault();
		}
		
		public URol verificarTipoDeRolId(UUsers nuevoUsuario)
        {
			return new Mapping().rol.Where(x => x.Id_rol.Equals(nuevoUsuario.Rol_usuario_id)).FirstOrDefault();
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
				if ((db.docente.Where(x =>(x.Correo.Equals(correo)))).FirstOrDefault() != null)
				{
					existe = true;
					return existe;
				}else if ((db.acudiente.Where(x => (x.Correo.Equals(correo)))).FirstOrDefault() != null)
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

	}
}
