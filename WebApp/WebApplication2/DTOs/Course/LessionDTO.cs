﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.DTOs
{
    public class LessionDTO
    {
        public int Id { get; set; }

        public string Time { get; set; }

        #region References

        public int LecturerId { get; set; }
        public int CourseId { get; set; }

        #endregion

        public static Lession ToModel(LessionDTO lessionDTO, ApplicationDbContext context)
        {
            var discussionList = new List<Discussion>();
            foreach (var discussion in context.Discussions)
                if (discussion.LessionId == lessionDTO.Id)
                    discussionList.Add(discussion);

            var rateList = new List<Rate>();
            foreach (var rate in context.Rates)
                if (rate.LessionId == lessionDTO.Id)
                    rateList.Add(rate);

            var attendanceList = new List<Attendance>();
            foreach (var attendance in attendanceList)
                if (attendance.LessionId == lessionDTO.Id)
                    attendanceList.Add(attendance);

            var testList = new List<Test>();
            foreach (var test in context.Tests)
                if (test.LessionId == lessionDTO.Id)
                    testList.Add(test);

            return new Lession
            {
                Id = lessionDTO.Id,
                Time = DateTime.Parse(lessionDTO.Time),
                
                Discussions = discussionList,
                Rates = rateList,
                Attendances = attendanceList,
                Tests = testList,

                LecturerId = lessionDTO.LecturerId,
                CourseId = lessionDTO.CourseId
            };
        }

        public static LessionDTO ToDTO(Lession lession)
        {
            return new LessionDTO
            {
                Id = lession.Id,
                Time = lession.Time.ToString(),
                LecturerId = lession.LecturerId,
                CourseId = lession.CourseId
            };
        }
    }
}
