using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
    public class Placar
    {
        public long PlacarID { get; set; }
        public long UsuarioID { get; set; }
        public System.DateTime DataInicio { get; set; }
        public Nullable<System.DateTime> DataFim { get; set; }
        public int QuantidadeRodadas { get; set; }

    }
}
