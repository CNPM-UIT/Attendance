using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class UserRole
    {
        [Key]
        public int Id { get; set; }

        #region References

        public string UserId { get; set; }
        public string RoleId { get; set; }

        #endregion
    }
}
