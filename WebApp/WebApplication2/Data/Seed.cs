using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.DTOs;
using WebApplication2.Models;

namespace WebApplication2.Data
{
    public class Seed
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            var applicationContext = serviceProvider.GetRequiredService<ApplicationDbContext>();

            // Semesters
            if (!applicationContext.Semesters.Any())
            {
                applicationContext.Semesters.AddRange(new List<Semester>()
                {
                    new Semester()
                    {
                        Name = "HK1 2020"
                    }
                });
                applicationContext.SaveChanges();
            }

            // Courses
            if (!applicationContext.Courses.Any())
            {
                applicationContext.Courses.AddRange(new List<Course>()
                {
                    new Course()
                    {
                        Code = "IT001",
                        Name = "Nhap mon lap trinh",
                        StartDate = DateTime.Parse("2020/01/01"),
                        EndDate = DateTime.Parse("2020/06/01"),
                        SemesterId = applicationContext.Semesters.First().Id
                    },
                    new Course()
                    {
                        Code = "IT002",
                        Name = "Lap trinh huong doi tuong",
                        StartDate = DateTime.Parse("2020/01/01"),
                        EndDate = DateTime.Parse("2020/06/01"),
                        SemesterId = applicationContext.Semesters.First().Id
                    }
                });
                applicationContext.SaveChanges();
            }

            // Users
            if (!applicationContext.Users.Any())
            {
                var userManager = serviceProvider.GetService<UserManager<User>>();

                var userDTOList = new List<UserDTO>()
                {
                    new UserDTO()
                    {
                        UserName = "admin",
                        PasswordHash = "admin123"
                    },
                    new UserDTO()
                    {
                        UserName = "lecturer_25",
                        PasswordHash = "1234"
                    },
                    new UserDTO()
                    {
                        UserName = "student_12",
                        PasswordHash = "abcd"
                    }
                };
                
                userDTOList.ForEach(userDTO => 
                    userManager.CreateAsync(
                        UserDTO.ToModel(userDTO, applicationContext), 
                        userDTO.PasswordHash
                    )
                );

                applicationContext.SaveChanges();
            }

            // Roles
            /*if (!applicationContext.Roles.Any())
            {
                var roleManager = serviceProvider.GetService<RoleManager<Role>>();

                var roleDTOList = new List<RoleDTO>()
                {
                    new RoleDTO()
                    {
                        Name = "Administrator"
                    },
                    new RoleDTO()
                    {
                        Name = "Lecturer"
                    },
                    new RoleDTO()
                    {
                        Name = "Student"
                    }
                };

                roleDTOList.ForEach(roleDTO =>
                    roleManager.CreateAsync(
                         RoleDTO.ToModel(roleDTO, applicationContext)
                    )
                );

                applicationContext.SaveChanges();
            }*/
            
            // Lecturers
            if (!applicationContext.Lecturers.Any())
            {
                applicationContext.Lecturers.AddRange(new List<Lecturer>()
                {
                    new Lecturer()
                    {
                        Code = "LT25",
                        AcademicRank = Enums.AcademicRank.Master,
                        IsMale = true,
                        FirstName = "Tran",
                        LastName = "Dung"                       
                    }
                });
                applicationContext.SaveChanges();
            }

            // Student
            if (!applicationContext.Students.Any())
            {
                applicationContext.Students.AddRange(new List<Student>()
                {
                    new Student()
                    {
                        Code = "ST12",
                        NickName = "st12",
                        Anonymous = false,
                        IsMale = true,
                        FirstName = "Nguyen",
                        LastName = "Khanh"
                    }
                });
                applicationContext.SaveChanges();
            }

            
            
            applicationContext.SaveChanges();
        }
    }
}
