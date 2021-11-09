﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
    public class Actividad
    {
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
