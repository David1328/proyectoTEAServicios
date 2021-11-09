using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace LogicaDeNegocio
{
    public class LActividad
    {
        public List<UActividad> listaActividadesDocente(UActividad idDocente)
        {
            return new Datos.Actividad().listaActividadesDocente(idDocente);
        }

        public Wraper agregarActividad(UActividad actividadE)
        {
            Wraper wp = new Wraper();
            try
            {
                int cantidadActividades = new Datos.Actividad().verificarCantidadMaximaActividadesPorDocente(actividadE);
                int cantidadMaxima = 4;
                if (cantidadActividades >= cantidadMaxima)
                {
                    wp.Mensaje = "Cantidad actividades maximas (" + cantidadMaxima + ") alcanzado";
                    return wp;
                }
                else
                {
                    wp.Mensaje = "Actividad agregada con exito";
                    new Datos.Actividad().agregarActividad(actividadE);

                    return wp;
                }
            }
            catch (Exception e)
            {
                wp.Mensaje = "error:" + e;
                return wp;
            }
        }
    }
}
