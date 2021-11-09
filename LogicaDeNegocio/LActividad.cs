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
    }
}
