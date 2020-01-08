using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Controllers;
using WebApplication2.DTOs;
using WebApplication2.Models;

namespace WebApplication2.Data
{
    public class Seed
    {
        public async static void Initialize(IServiceProvider serviceProvider)
        {
            var applicationContext = serviceProvider.GetRequiredService<ApplicationDbContext>();

            // Semesters
            var semestersController = new SemestersController(applicationContext);
            if (0 == semestersController.GetSemesters().Result.Value.Count())
            {
                var semesterDTOList = new List<SemesterDTO>
                {
                    new SemesterDTO()
                    {
                        Name = "HK1 2019-2020"
                    },
                    new SemesterDTO()
                    {
                        Name = "HK2 2019-2020"
                    }
                };

                foreach (var semesterDTO in semesterDTOList)
                    await semestersController.PostSemester(semesterDTO);
            }

            // Courses
            var courseController = new CoursesController(applicationContext);
            if (0 == courseController.GetCourses().Result.Value.Count())
            {
                var courseDTOList = new List<CourseDTO>
                {
                    new CourseDTO()
                    {
                        Code = "IT001",
                        Name = "Nhập môn lập trình",
                        StartDate = "2020/01/01",
                        EndDate = "2020/06/01",
                        SemesterId = applicationContext.Semesters.First().Id
                    },
                    new CourseDTO()
                    {
                        Code = "IT002",
                        Name = "Lập trình hướng đối tượng",
                        StartDate = "2020/01/01",
                        EndDate = "2020/06/01",
                        SemesterId = applicationContext.Semesters.First().Id
                    },
                    new CourseDTO()
                    {
                        Code = "IT003",
                        Name = "Cấu trúc dữ liệu và giải thuật",
                        StartDate = "2020/01/01",
                        EndDate = "2020/06/01",
                        SemesterId = applicationContext.Semesters.First().Id
                    }
                };

                foreach (var courseDTO in courseDTOList)
                    await courseController.PostCourse(courseDTO);
            }

            // Roles
            var roleManager = serviceProvider.GetService<RoleManager<Role>>();
            var rolesController = new RolesController(applicationContext, roleManager);
            if (0 == rolesController.GetRoles().Result.Value.Count())
            {
                var roleDTOList = new List<RoleDTO>()
                {
                    new RoleDTO()
                    {
                        Name = "Administrators"
                    },
                    new RoleDTO()
                    {
                        Name = "Lecturers"
                    },
                    new RoleDTO()
                    {
                        Name = "Students"
                    }
                };

                foreach (var roleDTO in roleDTOList)
                    await rolesController.PostRole(roleDTO);
            }

            // Users
            var userManager = serviceProvider.GetService<UserManager<User>>();
            var userRolesController = new UserRolesController(applicationContext);
            var usersController = new UsersController(applicationContext, userManager);
            if (0 == usersController.GetUsers().Result.Value.Count())
            {
                var userDTOList = new List<UserDTO>()
                {
                    new UserDTO
                    {
                        UserName = "admin",
                        PasswordHash = "admin123"
                    },
                    new UserDTO
                    {
                        UserName = "lt25",
                        PasswordHash = "lt25"
                    },
                    new UserDTO
                    {
                        UserName = "lt29",
                        PasswordHash = "lt29"
                    },
                    new UserDTO
                    {
                        UserName = "st12",
                        PasswordHash = "st12"
                    },
                    new UserDTO
                    {
                        UserName = "st16",
                        PasswordHash = "st16"
                    },
                    new UserDTO
                    {
                        UserName = "st32",
                        PasswordHash = "st32"
                    }
                };

                foreach (var userDTO in userDTOList)
                    await usersController.Register(userDTO);

                // Assign Role
                var userRoleDTOList = new List<UserRoleDTO>()
                {
                    new UserRoleDTO
                    {
                        UserId = usersController.GetUserByUserName("admin").Result.Value.Id,
                        RoleId = rolesController.GetRoleByRoleName("Administrators").Result.Value.Id
                    },
                    new UserRoleDTO
                    {
                        UserId = usersController.GetUserByUserName("lt25").Result.Value.Id,
                        RoleId = rolesController.GetRoleByRoleName("Lecturers").Result.Value.Id
                    },
                    new UserRoleDTO
                    {
                        UserId = usersController.GetUserByUserName("lt29").Result.Value.Id,
                        RoleId = rolesController.GetRoleByRoleName("Lecturers").Result.Value.Id
                    },
                    new UserRoleDTO
                    {
                        UserId = usersController.GetUserByUserName("st12").Result.Value.Id,
                        RoleId = rolesController.GetRoleByRoleName("Students").Result.Value.Id
                    },
                    new UserRoleDTO
                    {
                        UserId = usersController.GetUserByUserName("st16").Result.Value.Id,
                        RoleId = rolesController.GetRoleByRoleName("Students").Result.Value.Id
                    },
                    new UserRoleDTO
                    {
                        UserId = usersController.GetUserByUserName("st32").Result.Value.Id,
                        RoleId = rolesController.GetRoleByRoleName("Students").Result.Value.Id
                    }
                };

                foreach (var userRoleDTO in userRoleDTOList)
                    await userRolesController.PostUserRole(userRoleDTO);
            }

            // Lecturers
            var lecturersController = new LecturersController(applicationContext);
            if (0 == lecturersController.GetLecturers().Result.Value.Count())
            {               
                var lecturerDTOList = new List<LecturerDTO>
                {
                    new LecturerDTO()
                    {
                        Code = "LT25",
                        AcademicRank = (int)Enums.AcademicRank.Master,
                        IsMale = true,
                        FirstName = "Trần",
                        LastName = "Ngạn",
                        //UserId = usersController.GetUserByUserName("lt25").Result.Value.Id
                    },
                    new LecturerDTO()
                    {
                        Code = "LT29",
                        AcademicRank = (int)Enums.AcademicRank.Master,
                        IsMale = true,
                        FirstName = "Nguyễn",
                        LastName = "Hồng",
                        //UserId = usersController.GetUserByUserName("lt29").Result.Value.Id
                    }
                };

                foreach (var lecturerDTO in lecturerDTOList)
                    await lecturersController.PostLecturer(lecturerDTO);
            }

            // Students
            var studentController = new StudentsController(applicationContext);
            if (0 == studentController.GetStudents().Result.Value.Count())
            {
                var studentDTOList = new List<StudentDTO>()
                {
                    new StudentDTO()
                    {
                        Code = "ST12",
                        NickName = "ha_lan",
                        Anonymous = false,
                        IsMale = true,
                        FirstName = "Hà",
                        LastName = "Lan",
                        //UserId = usersController.GetUserByUserName("st12").Result.Value.Id
                    },
                    new StudentDTO()
                    {
                        Code = "ST16",
                        NickName = "dung",
                        Anonymous = false,
                        IsMale = true,
                        FirstName = "Trần",
                        LastName = "Dũng",
                        //UserId = usersController.GetUserByUserName("st16").Result.Value.Id
                    },
                    new StudentDTO()
                    {
                        Code = "ST32",
                        NickName = "tra_long",
                        Anonymous = false,
                        IsMale = true,
                        FirstName = "Trà",
                        LastName = "Long",
                        //UserId = usersController.GetUserByUserName("st32").Result.Value.Id
                    }               
                };

                foreach (var studentDTO in studentDTOList)
                    await studentController.PostStudent(studentDTO);
            }                       
        }
    }
}
