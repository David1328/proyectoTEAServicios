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
        public async Task<String> ingresoLogin(UUsers usuarioE)
        {
            Wraper wraper = new Wraper();

            try
            {
                if (new Datos.UsersLogin().verificarTipoDeRolId(usuarioE) == null)
                {
                    return wraper.Mensaje = "Este rol no existe";
                }
                else
                {
                    if (new Datos.UsersLogin().verificarExistenciaUsuario(usuarioE) == null)
                    {
                        return wraper.Mensaje = "Este usuario no se encuentra registrado, por favor registrese.";
                    }
                    else
                    {
                        if (new Datos.UsersLogin().verificarLogin(usuarioE) == null)
                        {
                            return wraper.Mensaje = "no se puso ingresar, contraseña incorrecta";
                        }
                        else
                        {
                            UAcceso acceso = new UAcceso();
                            acceso.Fecha_inicioSesion = DateTime.Now;
                            acceso.Sesion = usuarioE.Sesion;
                            new Datos.UsersLogin().agregarAcceso(acceso);
                            return wraper.Mensaje = "redireccionar a pagina perfil o inicio";
                        }
                    }
                }
            }
            catch (Exception e)
            {
                return "error: " + e;
            }
        }
    }
}
