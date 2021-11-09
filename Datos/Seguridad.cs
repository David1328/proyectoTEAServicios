using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
    public class Seguridad
    {

        public async Task guardarTokenLogin(LoginToken token)
        {
            using (var db = new Mapping())
            {
                db.login_token.Add(token);
                db.SaveChanges();
            }
        }

    }
}
