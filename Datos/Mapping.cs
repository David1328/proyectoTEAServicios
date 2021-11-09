using System.Data.Entity;
using Utilitarios;

public class Mapping : DbContext
{
	public Mapping() : base("name=Conexion")
	{

	}
	public DbSet<UUsers> user { get; set; }
	public DbSet<UAcudiente> acudiente { get; set; }
	public DbSet<UDocente> docente { get; set; }
	public DbSet<UPaciente> paciente { get; set; }
	public DbSet<URol> rol { get; set; }
	public DbSet<UAcceso> acceso { get; set; }

	/*token */
	public DbSet<LoginToken> login_token { get; set; }

}