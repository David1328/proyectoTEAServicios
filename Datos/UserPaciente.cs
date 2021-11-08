using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
	public class UserPaciente
	{

		public UPaciente verificarExistenciaDocenteEnlazar(UDocente docenteAEnlazar)
		{
			return new Mapping().paciente.Where(x=>(x.Numero_documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();
		}

		public bool verificarDocentePacienteMismaInstitucion(UDocente docenteAEnlazar)
		{
			UPaciente paciente = new Mapping().paciente.Where(x=>(x.Numero_documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();
			if (paciente.Institucion_id.Equals(docenteAEnlazar.Institucion_id))
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		public void enlazarPacienteDocente(UDocente docenteAEnlazar)
		{
			using (var db = new Mapping())
			{
				UPaciente pacienteAEnlazar = db.paciente.Where(x => (x.Numero_documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();

				pacienteAEnlazar.Cedula_docente = docenteAEnlazar.Cedula;

				var entry = db.Entry(pacienteAEnlazar);
				entry.State = EntityState.Modified;
				db.SaveChanges();

			}

		}

	}
}
