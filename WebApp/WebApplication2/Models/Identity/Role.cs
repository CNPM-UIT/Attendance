using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Role : IdentityRole
    {
        #region Relationships

        public ICollection<UserRole> UserRoles { get; set; }

        #endregion
    }
}
