using System;
using System.Collections.Generic;
using Utilitarios;

namespace LogicaDeNegocio
{
	public class LPaciente
	{
		
		public String enlazarDocentePaciente(UDocente docente)
		{
			//Condicional para verifcar si el niño ya tiene un docente
			if (new Datos.UsersRegister().AcudienteODocenteExistente(docente.Documento, 1) != null && new Datos.UserPaciente().verificarExistenciaDocenteEnlazar(docente).Documento_docente == null
				)
			{
				if (new Datos.UserPaciente().verificarDocentePacienteMismaInstitucion(docente))
				{
					new Datos.UserPaciente().enlazarPacienteDocente(docente);
					return "Enlace exitoso";
				}
				else
				{
					return "No perteneces a la misma institucion";
				}
			}
			else
			{
				return "Ya existe un enlace o cedula no creada";
			}
		}

		public List<UPaciente> obtenerEstudiantesPorEnlazar(int id)
		{
			return new Datos.UserPaciente().obtenerPacientesPorEnlazar(id);
		}

		public List<UPaciente> obtenerEstudiantesEnlazados(int id, UPaciente tipoUsuario)
		{
			return new Datos.UserPaciente().obtenerPacientesEnlazados(id, tipoUsuario);
		}


		public string enlazarConEstudiante(UPaciente datosAenlazar)
		{
			if (datosAenlazar.Documento_docente != null)
			{
				new Datos.UserPaciente().enlazarDocenteConEstudiante(datosAenlazar);

			}else if (datosAenlazar.Documento_acudiente != null)
			{
				new Datos.UserPaciente().enlazarAcudienteConEstudiante(datosAenlazar);
			}
			return "Se enlazo con exito";
		}

		public string eliminarEnlace(UPaciente datosAenlazar)
		{
			new Datos.UserPaciente().eliminarEnlace(datosAenlazar);
			return "Se elimino el enlace con exito";
		}
		public UPaciente datosPaciente(string documentoPaciente)
		{
			return new Datos.UserPaciente().datosPaciente(documentoPaciente);
		}

	}
}
