using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace console_motor_jogo_eniwine_01
{
    class Program
    {
        static void Main(string[] args)
        {
            var game = new Models.Game();
            game.Start();
            
            Console.WriteLine("Acerte o crime"); // Prompt
            Console.WriteLine("envie as sugestoes de sua sua teoria >>[x,y,z]"); // Prompt
            Console.WriteLine("Para sair do programa digite >>saida"); // Prompt
            Console.WriteLine("Para reiniciar o jogo digite >>start"); // Prompt

            while (true) // Loop indefinitely
            {
                string line = Console.ReadLine(); // Get string from user
                if (line[0] == '[') {
                    var teoria = Array.ConvertAll(line.Substring(1, line.Length - 2).Split(','), int.Parse).ToList();
                    var t = new Models.Teory(teoria[0], teoria[1], teoria[2]);
                    Console.WriteLine(t.Suspeito+ " - " + t.Local + " - " + t.Arma);
                    var test = game.Submit(t);
                    if (test == 0)
                    {
                        Console.WriteLine("Parabens");

                        Console.WriteLine(t.Suspeito + " - " + t.Local + " - " + t.Arma);

                        Console.WriteLine("Deseja jogar uma nova partida?? sim ou nao");
                        line = Console.ReadLine(); // Get string from user
                        if (line == "sim")
                        {
                            line = "start";
                        }
                        else {
                            line = "saida";
                        }
                    }
                    else {
                        Console.WriteLine("teste novamente:" + test);
                    }
                }

                if (line == "saida") // Check string
                {
                    Console.WriteLine("Até mais!!");
                    break;
                }

                if (line == "start") // Check string
                {
                    game.Start();
                    Console.Clear(); // Prompt
                    Console.WriteLine("Acerte o crime!!!"); // Prompt
                    Console.WriteLine("envie as sugestoes de sua sua teoria >>[x,y,z]"); // Prompt
                    Console.WriteLine("Para sair do programa digite >>saida"); // Prompt
                    Console.WriteLine("Para reiniciar o jogo digite >>start"); // Prompt
                }



                Console.Write("You typed "); // Report output
                Console.Write(line.Length);
                Console.WriteLine(" character(s)");
            }


        }
    }
}
