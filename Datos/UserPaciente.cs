using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using Utilitarios;

namespace Datos
{
    public class UserPaciente : Mapping
    {

        public UPaciente verificarExistenciaDocenteEnlazar(UDocente docenteAEnlazar)
        {
            return new Mapping().paciente.Where(x => (x.Documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();
        }

        public bool verificarDocentePacienteMismaInstitucion(UDocente docenteAEnlazar)
        {
            UPaciente paciente = new Mapping().paciente.Where(x => (x.Documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();
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
                UPaciente pacienteAEnlazar = db.paciente.Where(x => (x.Documento.Equals(docenteAEnlazar.Numero_documento_paciente))).FirstOrDefault();

                pacienteAEnlazar.Documento_docente = docenteAEnlazar.Documento;

                var entry = db.Entry(pacienteAEnlazar);
                entry.State = EntityState.Modified;
                db.SaveChanges();

            }

        }

        public List<UPaciente> obtenerPacientesPorEnlazar(int id)
        {
            using (var db = new Mapping())
            {
                return id == 1 ? db.paciente.Where(x => x.Documento_docente.Equals(null)).ToList() :
                    db.paciente.Where(x => x.Documento_acudiente.Equals(null)).ToList();
            }
            //new Mapping().paciente.ToList()
        }
        public List<UPaciente> obtenerPacientesEnlazados(int id, UPaciente tipoUsuario)
        {
            using (var db = new Mapping())
            {
                return id == 1 ? db.paciente.Where(x => x.Documento_docente == tipoUsuario.Documento_docente).ToList() :
                    db.paciente.Where(x => x.Documento_acudiente == tipoUsuario.Documento_acudiente).ToList();
            }
            //new Mapping().paciente.ToList()
        }
        public void enlazarDocenteConEstudiante(UPaciente datos)
        {
            using (var db = new Mapping())
            {
                UPaciente pacienteAEnlazar = db.paciente.Where(x => x.Documento.Equals(datos.Documento)).FirstOrDefault();
                pacienteAEnlazar.Documento_docente = datos.Documento_docente;
                var entry = db.Entry(pacienteAEnlazar);
                entry.State = EntityState.Modified;
                db.SaveChanges();

            }
        }
        public void enlazarAcudienteConEstudiante(UPaciente datos)
        {
            using (var db = new Mapping())
            {
                UPaciente pacienteAEnlazar = db.paciente.Where(x => x.Documento.Equals(datos.Documento)).FirstOrDefault();
                pacienteAEnlazar.Documento_acudiente = datos.Documento_acudiente;
                var entry = db.Entry(pacienteAEnlazar);
                entry.State = EntityState.Modified;
                db.SaveChanges();
            }
        }
		public void eliminarEnlace(UPaciente datos)
		{
			using (var db = new Mapping())
			{
				UPaciente pacienteADesenlazar = new UPaciente();
				if (datos.Documento_docente != null)
				{
					pacienteADesenlazar = db.paciente.Where(x => (x.Documento_docente.Equals(datos.Documento_docente)
					&&(x.Documento.Equals(datos.Documento)))).FirstOrDefault();
					pacienteADesenlazar.Documento_docente = null;
				}
				else if(datos.Documento_acudiente != null)
				{
					pacienteADesenlazar = db.paciente.Where(x => (x.Documento_acudiente.Equals(datos.Documento_acudiente)
					&& (x.Documento.Equals(datos.Documento)))).FirstOrDefault();
					pacienteADesenlazar.Documento_acudiente = null;
				}

				var entry = db.Entry(pacienteADesenlazar);
				entry.State = EntityState.Modified;
				db.SaveChanges();
			}
		}

		public UPaciente datosPaciente(string paciente_documento)
		{
			using (var db = new Mapping())
			{
				return db.paciente.Where(x => x.Documento.Equals(paciente_documento)).FirstOrDefault();
			}
		}

		public UPaciente getPatientInformation(String id_card_attendant)
		{
			return new Mapping().paciente.Where(x => x.Documento_acudiente.Equals(id_card_attendant)).FirstOrDefault();
		}

	}
}