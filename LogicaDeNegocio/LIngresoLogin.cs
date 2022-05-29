using Datos;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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
                            wraper.Mensaje = "redireccionar a pagina perfil o inicio";
                            wraper.WraperUsuario = new Datos.UsersLogin().datosUsuarioSegunDocumento(usuarioE);
                            acceso.Fecha_inicioSesion = DateTime.Now;
                            acceso.Sesion = usuarioE.Sesion;
                            acceso.Fecha_finSesion = null;
                            acceso.Id_usuario = wraper.WraperUsuario.Id;
                            new Datos.UsersLogin().agregarAcceso(acceso);
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

        //Numero_documento
        public string cerrarsession(UUsers session)
        {
            try
            {
                UUsers datos = new UsersLogin().datosUsuarioSegunDocumento(session);
                new Seguridad().cerrarAcceso(datos.Id);
                new Seguridad().borrarTokenLogin(datos);

                string url = "redireccionar";
                return url;
            }
            catch(Exception ex)
            {
                string errorMjs = "Usuario Inexistente" + ex;
                return errorMjs;
            }

        }
		public string accesoTokenRecuperar(string token)
		{
			try
			{
				UUsers usuarioToken = new UsersLogin().accesoRecuperarClave(token);
				if (usuarioToken == null)
				{
					return "El Token es inválido, genere uno nuevo";
				}if (usuarioToken.Token_expirar < DateTime.Now)
				{
					return "El Token está vencido, genere uno nuevo";
				}
				return "Acceso exitoso";
			}
			catch (Exception ex)
			{
				string errorMjs = "Ha surgido un error" + ex;
				return errorMjs;
			}
		}
		public string nuevaClave(UUsers nuevaClaveUser)
		{
			try
			{
				UUsers cambiarClave = new UsersLogin().accesoRecuperarClave(nuevaClaveUser.Token);
				if (cambiarClave == null || cambiarClave.Token_expirar < DateTime.Now)
				{
					return "El Token es inválido, genere uno nuevo";
				}
				else
				{
					cambiarClave.Clave = nuevaClaveUser.Clave;
					cambiarClave.Token = null;
					cambiarClave.Token_expirar = null;
					new UsersLogin().cambiarDatosParaRecuperar(cambiarClave);
					return "Clave modificada con exito";
				}
			}
			catch(Exception ex)
			{
				string errorMjs = "Ha surgido un error" + ex;
				return errorMjs;
			}

		}
		public string enviarCorreoDeRecuperacion(string correo)
		{
			try
			{
				UUsers correoUsuario = new UsersLogin().confirmarCorreo(correo);
				if(correoUsuario!=null)
				{
					correoUsuario.Clave = " ";
					correoUsuario.Token_expirar = DateTime.Now.AddDays(1);
					correoUsuario.Token = encriptar(JsonConvert.SerializeObject(correoUsuario));
					if (correoUsuario.Rol_id == 1)
					{
						UDocente docente = new UDocente();
						docente.Correo = correo;
						new Mail().enviarMail(docente, correoUsuario.Token);
					}
					else if (correoUsuario.Rol_id == 2)
					{
						UAcudiente acudiente = new UAcudiente();
						acudiente.Correo = correo;
						new Mail().enviarMail(acudiente, correoUsuario.Token);
					}
					new UsersLogin().cambiarDatosParaRecuperar(correoUsuario);
					return "Revisa tu correo para nueva contraseña";
				}
				return "Usuario Inexistente";
			}
			catch (Exception ex)
			{
				string errorMjs = "Ha surgido un error" + ex;
				return errorMjs;
			}

		}
		private string encriptar(string entrada)
		{
			SHA256CryptoServiceProvider prueba = new SHA256CryptoServiceProvider();

			byte[] entradaByte = Encoding.UTF8.GetBytes(entrada);
			byte[] hashedBytes = prueba.ComputeHash(entradaByte);

			StringBuilder salida = new StringBuilder();

			for (int i = 0; i < hashedBytes.Length; i++)
			{
				salida.Append(hashedBytes[i].ToString("x2").ToLower());
			}
			return salida.ToString();
		}
	}
}
