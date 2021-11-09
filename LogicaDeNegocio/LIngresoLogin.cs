using Datos;
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
        public async Task<Wraper> ingresoLogin(UUsers usuarioE)
        {
            Wraper wraper = new Wraper();

            try
            {

                    if (new Datos.UsersLogin().verificarExistenciaUsuario(usuarioE) == null)
                    {
                        wraper.Mensaje = "Este usuario no se encuentra registrado, por favor registrese.";
                        wraper.WraperUsuario = null;
                        return wraper;
                    }
                    else
                    {
                        if (new Datos.UsersLogin().verificarLogin(usuarioE) == null)
                        {
                            wraper.Mensaje = "no se puso ingresar, contraseña incorrecta";
                            wraper.WraperUsuario = null;
                            return wraper;
                        }
                        else
                        {
                            UAcceso acceso = new UAcceso();
                            acceso.Fecha_inicioSesion = DateTime.Now;
                            acceso.Sesion = usuarioE.Sesion;
                            new Datos.UsersLogin().agregarAcceso(acceso);
                            wraper.Mensaje = "redireccionar a pagina perfil o inicio";
                            wraper.WraperUsuario = new Datos.UsersLogin().datosUsuarioSegunDocumento(usuarioE);
                            return wraper;
                        }
                    }
                
            }
            catch (Exception e)
            {
                wraper.Mensaje = "error: " + e;
                return wraper;
            }
        }

        public async Task guardarToken(LoginToken token)
        {
            await new Seguridad().guardarTokenLogin(token);
        }
    }
}
