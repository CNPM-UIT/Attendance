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

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Name { get {
                return LastName +" "+ FirstName;
            } }
        public bool GioiTinhBool { get; set; } //nam = true, nữ = false

        public string GioiTinh
        {
            get
            {
                return GioiTinhBool ? "Nam" : "Nữ";
            }
        }
    }
}
