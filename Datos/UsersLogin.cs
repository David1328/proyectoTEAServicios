using System;
using System.Collections.Generic;
using System.Data.Entity;
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
            return new Mapping().user.Where(x => (x.Documento.Equals(usuarioE.Documento))).FirstOrDefault();
        }
        public UUsers verificarLogin(UUsers usuarioE)
        {

            return new Mapping().user.Where(x => (x.Documento.Equals(usuarioE.Documento)) && (x.Clave.Equals(usuarioE.Clave))).FirstOrDefault();
        }

        public UUsers datosUsuarioSegunDocumento(UUsers usuarioE)
        {
            UUsers usuario = new UUsers();
            usuario = new Mapping().user.Where(x => (x.Documento.Equals(usuarioE.Documento))).FirstOrDefault();
            return usuario;
        }

        public async Task<UAcudiente> datosAcudienteUsuarioSegunDocumento(string cedulaE)
        {
            UAcudiente acudiente = new UAcudiente();
            acudiente = new Mapping().acudiente.Where(x => x.Documento.Equals(cedulaE)).FirstOrDefault();
            return acudiente;
        }

        public async Task<UPaciente> datosPacienteSegunDocumento(string cedulaE)
        {
            UPaciente usuario = new UPaciente();
            usuario = new Mapping().paciente.Where(x => (x.Documento.Equals(cedulaE))).FirstOrDefault();
            return usuario;
        }

        public async Task<UDocente> datosDocenteUsuarioSegunDocumento(string cedulaE)
        {
            UDocente usuario = new UDocente();
            usuario = new Mapping().docente.Where(x => (x.Documento.Equals(cedulaE))).FirstOrDefault();
            return usuario;
        }

        public void agregarAcceso(UAcceso accesoUsuarioE)
        {
            using (var db = new Mapping()) {
                db.acceso.Add(accesoUsuarioE);
                db.SaveChanges();
            }
        }

		public UUsers confirmarCorreo(string correo)
		{
			using(var db = new Mapping())
			{
				UDocente docenteCorreo = db.docente.Where(x => x.Correo.Equals(correo)).FirstOrDefault();
				UAcudiente acudienteCorreo = db.acudiente.Where(x => x.Correo.Equals(correo)).FirstOrDefault();
				if (docenteCorreo != null)
				{
					var respu = db.user.Where(x => x.Documento.Equals(docenteCorreo.Documento)).FirstOrDefault();
					return respu;
				}
				else if (acudienteCorreo != null)
				{
					return db.user.Where(x => x.Documento.Equals(acudienteCorreo.Documento)).FirstOrDefault();
				}
				return null;
			}
		}
		public void cambiarDatosParaRecuperar(UUsers borrarClave)
		{
			using (var db = new Mapping())
			{
				UUsers users = db.user.Where(x => x.Documento.Equals(borrarClave.Documento)).First();

				users.Clave = borrarClave.Clave;
				users.Token = borrarClave.Token;
				users.Token_expirar = borrarClave.Token_expirar;

				var enty = db.Entry(users);
				enty.State = EntityState.Modified;
				db.SaveChanges();
			}
		}
		public UUsers accesoRecuperarClave(string token)
		{
			using (var db = new Mapping())
			{
				return db.user.Where(x => x.Token.Equals(token)).FirstOrDefault();
			}
		}
    }
}
