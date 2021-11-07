using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace LogicaDeNegocio
{
    public class LIngresoLogin
    {
        public String ingresoLogin(UUsers usuarioE, string sesion)
        {
            try
            {
                Wraper wraper = new Wraper();
                if (new Datos.UsersLogin().verificarLogin(usuarioE) == null)
                {
                    return wraper.Mensaje = "no se puso ingresar";
                }
                else
                {
                    UAcceso acceso = new UAcceso();
                    acceso.Fecha_inicioSesion = DateTime.Now;
                    acceso.Sesion = sesion;
                    new Datos.UsersLogin().agregarAcceso(acceso);
                    return wraper.Mensaje = "redireccionar a pagina perfil o inicio";
                }
            }
            catch (Exception e)
            {
                return "error: " + e;
            }
        }
    }
}
