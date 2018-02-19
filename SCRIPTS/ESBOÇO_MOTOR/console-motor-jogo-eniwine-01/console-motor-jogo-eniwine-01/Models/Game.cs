using System;
using System.Collections.Generic;
using System.Linq;

namespace Models
{

    public class Game
    {
        private Rules rules;
        private Teory solution;

        public Game()
        {
            rules = new Rules();
        }
        public Game(int players)
        {
            rules = new Rules();
        }


        public void Start()
        {
            solution = new Teory()
            {
                Suspeito = lottery(rules.Suspeitos),
                Local = lottery(rules.Locais),
                Arma = lottery(rules.Armas)
            };

        }

        private int lottery(int begin, int end)
        {
            var rnd = new Random();
            return rnd.Next(begin, end);
        }


        private KeyValuePair<int, string> lottery(Dictionary<int, string> collection)
        {
            var begin = collection.Min(e => e.Key);
            var end = collection.Max(e => e.Key);
            return collection.FirstOrDefault(e=>e.Key== lottery(begin, end));
        }

        public int Submit(Teory teory)
        {
            var ret =new List<int> { };
            if (solution.Suspeito.Key != teory.Suspeito.Key)
            {
                ret.Add(1);
            }

            if (solution.Local.Key != teory.Local.Key)
            {
                ret.Add(2);
            }

            if (solution.Arma.Key != teory.Arma.Key)
            {
                ret.Add(3);
            }

            if (ret.Count>0)
            {
                return ret[lottery(1, ret.Count) -1];
            }
            else {
                return 0;
            }

        }






    }
}