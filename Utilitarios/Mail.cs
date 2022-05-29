using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;

namespace Utilitarios
{
    public class Mail
    {
        public void enviarMail(Object datosUsuario, string token)
        {
            //mail
            MailMessage mail = new MailMessage();
            SmtpClient SmtpSever = new SmtpClient("smtp.gmail.com", 587);//servidor gmail
			string tipoDeUsuario = datosUsuario.GetType().ToString().Split('.')[1];
			switch (tipoDeUsuario)
			{
				case "UDocente":
					if (((UDocente) datosUsuario).Documento != null && ((UDocente)datosUsuario).Correo != null)
					{
						mail.From = new MailAddress("autiweb.aplicacion@gmail.com", "Compra Autiweb exitosa");//correo que envia, diplay name 
						mail.Subject = "Registro exitoso";//asunto
						mail.Body = "Su compra ha sido exitosa, sus datos son:\n" + "Cc:" + ((UDocente)datosUsuario).Documento + "\nNombre: " + ((UDocente) datosUsuario).Nombre +
							"\nCodigo de compra: " + token;
						mail.To.Add(((UDocente)datosUsuario).Correo);//destino del correo
					}
					else if (((UDocente)datosUsuario).Documento == null && ((UDocente)datosUsuario).Correo != null)
					{
						mail.From = new MailAddress("autiweb.aplicacion@gmail.com", "Correo para nueva contraseña");//correo que envia, diplay name 
						mail.Subject = "Envio pagina de recuperación";//asunto
						mail.Body = "Hola docente, para recuperar su contraseña debe ingresar al siguiente Link:\n Su link de acceso es: http://localhost:4200/nuevaClave/" + token;
						mail.To.Add(((UDocente)datosUsuario).Correo);//destino del correo
					}
					break;
				case "UAcudiente":
					mail.From = new MailAddress("autiweb.aplicacion@gmail.com", "Correo para nueva contraseña");//correo que envia, diplay name 
					mail.Subject = "Envio pagina de recuperación";//asunto
					mail.Body = "Hola acudiente, para recuperar su contraseña debe ingresar al siguiente Link:\n Su link de acceso es: http://localhost:4200/nuevaClave/" + token;
					mail.To.Add(((UAcudiente)datosUsuario).Correo);//destino del correo
					break;
			}
            //mail.IsBodyHtml = true;
            //mail.Priority = MailPriority.Normal;

            //Configuracion del SMTP
            SmtpSever.Port = 587;
            SmtpSever.UseDefaultCredentials = false;
            SmtpSever.Credentials = new System.Net.NetworkCredential("autiweb.aplicacion@gmail.com", "Auti123456#");//correo origen, contra*
            SmtpSever.EnableSsl = true;
            SmtpSever.Send(mail);//eviar
        }
    }
}
