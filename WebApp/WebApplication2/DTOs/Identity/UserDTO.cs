using Microsoft.AspNetCore.DataProtection.KeyManagement;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.DTOs
{
    public class UserDTO
    {
        public string Id { get; set; }

        public string UserName { get; set; }

        public string Email { get; set; }

        public string PasswordHash { get; set; }

        //public int PersonId { get; set; }

        public static User ToModel(UserDTO userDTO, ApplicationDbContext context)
        {
            var passwordHasher = new PasswordHasher<User>();
            //var student = context.Students.FirstOrDefault(x => x.Id == userDTO.PersonId);
            //var lecturer = context.Lecturers.FirstOrDefault(x => x.Id == userDTO.PersonId);

            var user = new User()
            {
                Id = userDTO.Id,
                Email = userDTO.Email,
                UserName = userDTO.UserName,
                //PersonId = (student != null ? student.Id : lecturer != null ? lecturer.Id : 0)
            };
            return user;
        }

        public static UserDTO ToDTO(User user)
        {
            return new UserDTO()
            {
                Id = user.Id,
                Email = user.Email,
                UserName = user.UserName,
                PasswordHash = user.PasswordHash,
                //PersonId = user.PersonId
            };
        }
    }
}
