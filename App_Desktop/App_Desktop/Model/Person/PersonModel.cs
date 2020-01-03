using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Person
{
    public class PersonModel
    {
        public int Id { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string FullName { get { return FirstName + ' ' + LastName; } }

        public bool IsMale { get; set; }

        // Composition

        public UserModel User { get; set; }
    }
}
