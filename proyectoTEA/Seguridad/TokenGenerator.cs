using System;
using System.Configuration;
using System.Security.Claims;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.IdentityModel.Tokens;
using Utilitarios;
using LogicaDeNegocio;

namespace proyectoTEA.Seguridad
{
    public class TokenGenerator
    {

            public static string GenerateTokenJwt(UUsers user)
            {
                //TODO: appsetting for Demo JWT - protect correctly this settings

                var audienceToken = ConfigurationManager.AppSettings["JWT_AUDIENCE_TOKEN"];
                var issuerToken = ConfigurationManager.AppSettings["JWT_ISSUER_TOKEN"];
                var secretKey = ConfigurationManager.AppSettings["JWT_SECRET_KEY"];

                var securityKey = new SymmetricSecurityKey(System.Text.Encoding.Default.GetBytes(secretKey));
                var signingCredentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256Signature);

                // create a claimsIdentity 
                ClaimsIdentity claimsIdentity = new ClaimsIdentity(new[] {
                new Claim("Usuario", user.Numero_documento),
                new Claim("Rol", user.Rol_usuario_id.ToString())

            });

                // create token to the user 
                var tokenHandler = new System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler();
                var jwtSecurityToken = tokenHandler.CreateJwtSecurityToken(
                    audience: audienceToken,
                    issuer: issuerToken,
                    subject: claimsIdentity,
                    notBefore: DateTime.Now,
                    expires: DateTime.Now.AddMinutes(15),
                    signingCredentials: signingCredentials);

                var jwtTokenString = tokenHandler.WriteToken(jwtSecurityToken);

                LoginToken token = new LoginToken();
                token.FechaGenerado = DateTime.Now;
                token.FechaVigencia = DateTime.Now.AddMinutes(15);
                token.User_id = user.Usuario_id;
                token.Token = jwtTokenString;
                new LIngresoLogin().guardarToken(token);
                return jwtTokenString;
            }
        
    }
}