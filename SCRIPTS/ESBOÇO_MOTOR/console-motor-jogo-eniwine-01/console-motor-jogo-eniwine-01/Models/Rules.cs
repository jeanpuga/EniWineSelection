using System.Collections.Generic;

namespace Models
{
    public class Rules
    {
        public Dictionary<int, string> Suspeitos
        {
            get
            {
                var ret = new Dictionary<int, string>();
                ret.Add(1, "Esqueleto");
                ret.Add(2, "Khan");
                ret.Add(3, "Darth vader");
                ret.Add(4, "Sideshow Bob");
                ret.Add(5, "Coringa");
                ret.Add(6, "Duende Verde");
                return ret;
            }
        }

        public Dictionary<int, string> Locais
        {
            get
            {
                var ret = new Dictionary<int, string>();
                ret.Add(1, "Etérnia");
                ret.Add(2, "Vulcano");
                ret.Add(3, "Tatooine");
                ret.Add(4, "Springfield");
                ret.Add(5, "Gotham");
                ret.Add(6, "Nova York");
                ret.Add(7, "Sibéria");
                ret.Add(8, "Machu Picchu");
                ret.Add(9, "Show do Katinguele");
                ret.Add(10, "São Paulo");

                return ret;
            }
        }

        public Dictionary<int, string> Armas
        {
            get
            {
                var ret = new Dictionary<int, string>();
                ret.Add(1, "Cajado Devastador");
                ret.Add(2, "Phaser");
                ret.Add(3, "Peixeira");
                ret.Add(4, "Trezoitão");
                ret.Add(5, "Sabre de Luz");
                ret.Add(6, "Bomba ");
                return ret;
            }
        }
    }
}
