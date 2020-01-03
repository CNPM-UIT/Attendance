using Microsoft.AspNetCore.DataProtection.KeyManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Identity
{
    public class UserDTO
    {
        public IKey Id { get; set; }

        public string UserName { get; set; }

        public string Email { get; set; }

        public string PasswordHash { get; set; }
    }
}
