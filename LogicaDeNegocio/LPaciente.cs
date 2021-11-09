using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace LogicaDeNegocio
{
	public class LPaciente
	{
		
		public String enlazarDocentePaciente(UDocente docente)
		{
			//Condicional para verifcar si el niño ya tiene un docente
			if (new Datos.UserPaciente().verificarExistenciaDocenteEnlazar(docente).Cedula_docente == null &&
				new Datos.UsersRegister().AcudienteODocenteExistente(docente.Cedula,1) != null)
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

	}
}
