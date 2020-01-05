using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IO.Swagger.Model;

namespace App_Desktop.Model.Class
{
    public class SemesterModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string ClassCode { get; internal set; }

        public static SemesterModel CreateFrom(SemesterDTO arg)
        {
            return new SemesterModel()
            {
                Id = arg.Id.Value,
                Name = arg.Name,
                ClassCode = "Not available"
            };
        }
    }
}
