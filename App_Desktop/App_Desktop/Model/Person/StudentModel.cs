using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Person
{
    public class StudentModel
    {
        public int Id { get; set; }
        public string StudentCode { get; set; }

        public string Name { get; set; }
        public string NickName { get; set; }

        public bool Anonymous { get; set; }

        public bool DiHoc { get; set; }
    }
}
