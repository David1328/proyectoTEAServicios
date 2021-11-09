using System;
using System.Collections.Generic;
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
            return new Mapping().user.Where(x => (x.Numero_documento.Equals(usuarioE.Numero_documento))).FirstOrDefault();
        }
        public UUsers verificarLogin(UUsers usuarioE)
        {

            return new Mapping().user.Where(x => (x.Numero_documento.Equals(usuarioE.Numero_documento)) && (x.Clave_usuario.Equals(usuarioE.Clave_usuario))).FirstOrDefault();
        }

        public UUsers datosUsuarioSegunDocumento(UUsers usuarioE)
        {
            UUsers usuario = new UUsers();
            usuario = new Mapping().user.Where(x => (x.Numero_documento.Equals(usuarioE.Numero_documento))).FirstOrDefault();
            return usuario;
        }

        public async Task<UAcudiente> datosAcudienteUsuarioSegunDocumento(string cedulaE)
        {
            UAcudiente acudiente = new UAcudiente();
            acudiente = new Mapping().acudiente.Where(x => x.Cedula.Equals(cedulaE)).FirstOrDefault();
            return acudiente;
        }

        public async Task<UPaciente> datosPacienteSegunDocumento(string cedulaE)
        {
            UPaciente usuario = new UPaciente();
            usuario = new Mapping().paciente.Where(x => (x.Numero_documento.Equals(cedulaE))).FirstOrDefault();
            return usuario;
        }

        public async Task<UDocente> datosDocenteUsuarioSegunDocumento(string cedulaE)
        {
            UDocente usuario = new UDocente();
            usuario = new Mapping().docente.Where(x => (x.Cedula.Equals(cedulaE))).FirstOrDefault();
            return usuario;
        }

        public void agregarAcceso(UAcceso accesoUsuarioE)
        {
            using (var db = new Mapping()) {
                db.acceso.Add(accesoUsuarioE);
                db.SaveChanges();
            }
        }

    }
}
