using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace BUSINESS
{
    public static class Parametros
    {
        public static List<MODELS.Parametros> Obter(int tipoID) {
            using (var db = new DATA.ENIWINEEntities())
            {
                var result = (from p in db.Parametros
                              where p.ParametroTipoID== tipoID
                              select new MODELS.Parametros
                              {
                                  Chave=p.Chave,
                                  Valor = p.Valor
                              }).ToList();
                return result;

            }
        }

        public static List<MODELS.Parametros> Obter()
        {
            using (var db = new DATA.ENIWINEEntities())
            {
                var result = (from p in db.Parametros
                              select new MODELS.Parametros
                              {
                                  ParametroTipoID = p.ParametroTipoID,
                                  Chave = p.Chave,
                                  Valor = p.Valor
                              }).ToList();
                return result;

            }
        }

    }
}
