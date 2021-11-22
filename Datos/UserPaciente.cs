﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using Utilitarios;

namespace Datos
{
	public class UserPaciente
	{

		public UPaciente verificarExistenciaDocenteEnlazar(UDocente docenteAEnlazar)
		{
			return new Mapping().paciente.Where(x => (x.Numero_documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();
		}

		public bool verificarDocentePacienteMismaInstitucion(UDocente docenteAEnlazar)
		{
			UPaciente paciente = new Mapping().paciente.Where(x => (x.Numero_documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();
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

		public List<UPaciente> obtenerPacientesPorEnlazar(int id)
		{
			using (var db = new Mapping())
			{
				return id == 1 ? db.paciente.Where(x => x.Cedula_docente.Equals(null)).ToList() : 
					db.paciente.Where(x => x.Cedula_acudiente.Equals(null)).ToList();
			}
			//new Mapping().paciente.ToList()
		}
		public List<UPaciente> obtenerPacientesEnlazados(int id)
		{
			using (var db = new Mapping())
			{
				return id == 1 ? db.paciente.Where(x => x.Cedula_docente!=null).ToList() :
					db.paciente.Where(x => x.Cedula_acudiente!=null).ToList();
			}
			//new Mapping().paciente.ToList()
		}
		public void enlazarDocenteConEstudiante(UPaciente datos)
		{
			using (var db = new Mapping())
			{
				UPaciente pacienteAEnlazar = db.paciente.Where(x => x.Numero_documento.Equals(datos.Numero_documento)).FirstOrDefault();
				pacienteAEnlazar.Cedula_docente = datos.Cedula_docente;
				var entry = db.Entry(pacienteAEnlazar);
				entry.State = EntityState.Modified;
				db.SaveChanges();

			}
		}
		public void enlazarAcudienteConEstudiante(UPaciente datos)
		{
			using (var db = new Mapping())
			{
				UPaciente pacienteAEnlazar = db.paciente.Where(x => x.Numero_documento.Equals(datos.Numero_documento)).FirstOrDefault();
				pacienteAEnlazar.Cedula_acudiente = datos.Cedula_acudiente;
				var entry = db.Entry(pacienteAEnlazar);
				entry.State = EntityState.Modified;
				db.SaveChanges();
			}
		}
	}
}