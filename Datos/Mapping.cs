using System.Data.Entity;
using Utilitarios;

public class Mapping : DbContext
{
	public Mapping() : base("name=Conexion")
	{

	}
	public DbSet<UUsers> user { get; set; }
	public DbSet<URol> rol { get; set; }
	public DbSet<UAcceso> acceso { get; set; }

}