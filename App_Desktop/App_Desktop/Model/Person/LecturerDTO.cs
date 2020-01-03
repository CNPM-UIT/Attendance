using App_Desktop.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Person
{
    public class LecturerDTO : PersonDTO
    {
        public string Code { get; set; }

        public int AcademicRank { get; set; }
    }
}
