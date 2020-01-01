using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Person
{
    public class StudentDTO : PersonDTO
    {
        public string Code { get; set; }

        public string NickName { get; set; }

        public bool Anonymous { get; set; }
    }
}
