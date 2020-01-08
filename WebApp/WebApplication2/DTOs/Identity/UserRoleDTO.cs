using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.DTOs
{
    public class UserRoleDTO
    {
        public int Id { get; set; }

        public string UserId { get; set; }
        public string RoleId { get; set; }

        public static UserRole ToModel(UserRoleDTO userRoleDTO, ApplicationDbContext context)
        {
            return new UserRole
            {
                Id = userRoleDTO.Id,
                UserId = userRoleDTO.UserId,
                RoleId = userRoleDTO.RoleId,
            };
        }

        public static UserRoleDTO ToDTO(UserRole userRole)
        {
            return new UserRoleDTO
            {
                Id = userRole.Id,
                UserId = userRole.UserId,
                RoleId = userRole.RoleId
            };
        }
    }
}
