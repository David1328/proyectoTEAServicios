using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
    public class Seguridad : Mapping
    {
        public UsersLogin UsersLogin
        {
            get => default(UsersLogin);
            set
            {
            }
        }

        public async Task guardarTokenLogin(LoginToken token)
        {
            using (var db = new Mapping())
            {
                db.login_token.Add(token);
                db.SaveChanges();
            }
        }

        public void cerrarAcceso(int userid)
        {
            using (var db = new Mapping())
            {
                UAcceso acceso = new UAcceso();
                acceso = db.acceso.Where(x => x.Id_acceso == userid && x.Fecha_finSesion == null).FirstOrDefault();
                acceso.Fecha_finSesion = DateTime.Now;

                db.acceso.Attach(acceso);
                var entry = db.Entry(acceso);
                entry.State = EntityState.Modified;
                db.SaveChanges();
            }
        }

        //borra token de autenticacion del login - API
        public void borrarTokenLogin(UUsers idUsuario)
        {
            using (var db = new Mapping())
            {
                LoginToken usuario = db.login_token.Where(x => x.User_id == idUsuario.Id).First();
                db.login_token.Remove(usuario);
                db.SaveChanges();
            }
        }

    }
}
