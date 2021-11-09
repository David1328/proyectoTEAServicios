using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
    public class Actividad
    {

        public int verificarCantidadMaximaActividadesPorDocente(UActividad actividadE)
        {
            return new Mapping().actividad.Where(x => (x.Docente_creador.Equals(actividadE.Docente_creador))).Count();
        }
        public void agregarActividad(UActividad actividadE){

            using (var db = new Mapping())
            {
                db.actividad.Add(actividadE);
                db.SaveChanges();
            }
        }

        public List<UActividad> listaActividadesDocente(UActividad idDocente)
        {
            using (var db = new Mapping())
            {
                List<UActividad> lista = (from h in db.actividad 
                                          where h.Docente_creador == idDocente.Docente_creador

                                                  select new
                                                  {
                                                      h
                                                  }).ToList().Select(m => new UActividad
                                                  {
                                                      Descripcion = m.h.Descripcion,
                                                      Id_actividad = m.h.Id_actividad,
                                                      Docente_creador = m.h.Docente_creador,
                                                      Titulo = m.h.Titulo,                                                    
                                                  }).ToList();
                return lista;
            }
        }
    }
}
