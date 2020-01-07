using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.DTOs
{
    public class RoleDTO
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public static Role ToModel(RoleDTO roleDTO, ApplicationDbContext context)
        {
            return new Role
            {
                Id = roleDTO.Id,
                Name = roleDTO.Name
            };
        }

        public static RoleDTO ToDTO(Role role)
        {
            return new RoleDTO
            {
                Id = role.Id,
                Name = role.Name
            };
        }
    }
}
