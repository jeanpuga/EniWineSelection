using System.Collections.Generic;
using System.Linq;

namespace Models
{
    public class Teory
    {
        private Rules rules= new Rules();
        public Teory()
        {
        
        }
        public Teory(int suspeito, int local,int arma) {
            this.Suspeito = rules.Suspeitos.FirstOrDefault(e => e.Key == suspeito);
            this.Local = rules.Locais.FirstOrDefault(e => e.Key == local);
            this.Arma = rules.Armas.FirstOrDefault(e => e.Key == arma);

        }
        public KeyValuePair<int, string> Suspeito
        {
            get;
            set;
        }
        public KeyValuePair<int, string> Local
        {
            get;
            set;
        }
        public KeyValuePair<int, string> Arma
        {
            get;
            set;
        }


    }
}