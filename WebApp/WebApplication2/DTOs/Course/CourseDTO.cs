﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.DTOs
{
    public class CourseDTO
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string StartDate { get; set; }

        public string EndDate { get; set; }

        #region References

        public int SemesterId { get; set; }

        #endregion

        public static Course ToModel(CourseDTO courseDTO, ApplicationDbContext context)
        {
            var courseLecturerList = new List<CourseLecturer>();
            foreach (var courseLecturer in context.CourseLecturers)
                if (courseLecturer.CourseId == courseDTO.Id)
                    courseLecturerList.Add(courseLecturer);

            var documentList = new List<Document>();
            foreach (var document in context.Documents)
                if (document.CourseId == courseDTO.Id)
                    documentList.Add(document);

            var lessionList = new List<Lession>();
            foreach (var lession in context.Lessions)
                if (lession.CourseId == courseDTO.Id)
                    lessionList.Add(lession);

            return new Course
            {
                Id = courseDTO.Id,
                Code = courseDTO.Code,
                Name = courseDTO.Name,
                StartDate = DateTime.Parse(courseDTO.StartDate),
                EndDate = DateTime.Parse(courseDTO.EndDate),
                
                CourseLecturers = courseLecturerList,
                Documents = documentList,
                Lessions = lessionList,

                SemesterId = courseDTO.SemesterId
            };
        }

        public static CourseDTO ToDTO(Course course)
        {
            return new CourseDTO
            {
                Id = course.Id,
                Code = course.Code,
                Name = course.Name,
                StartDate = course.StartDate.ToString(),
                EndDate = course.EndDate.ToString(),
                SemesterId = course.SemesterId
            };
        }
    }
}