using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IO.Swagger.Api;

namespace CustomTestConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            //var urlstr = "http://165.22.251.9:5000";
            // var uri = new Uri(urlstr);
            // LecturersApi instance = new LecturersApi(urlstr);
            var instance = new TestsApi();
            var result = instance.ApiTestsGet();
            foreach (var item in result)
                Console.WriteLine(item);
            Console.Read();
        }
    }
}
