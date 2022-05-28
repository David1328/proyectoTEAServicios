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
        public void enviarMailCompra(UDocente datosDocenteCompra, string token)
        {
            //mail
            MailMessage mail = new MailMessage();
            SmtpClient SmtpSever = new SmtpClient("smtp.gmail.com", 587);//servidor gmail

            mail.From = new MailAddress("autiweb.aplicacion@gmail.com", "Compra Autiweb exitosa");//correo que envia, diplay name 
            mail.Subject = "Registro exitoso";//asunto
            mail.Body = "Su compra ha sido exitosa, sus datos son:\n"+"Cc:"+datosDocenteCompra.Documento+"\nNombre: " + datosDocenteCompra.Nombre+
                "\nCodigo de compra: "+ token;
            mail.To.Add(datosDocenteCompra.Correo);//destino del correo
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
