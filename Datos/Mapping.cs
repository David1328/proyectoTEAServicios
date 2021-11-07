using System.Data.Entity;
using Utilitarios;

public class Mapping : DbContext
{
	public Mapping() : base("name=Conexion")
	{

	}
	public DbSet<UUsers> user { get; set; }
	//Registro/1 docente
	//Registro/2 acud
	//Registro/3 niño
}