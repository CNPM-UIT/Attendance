﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Course
    {
        [Key]
        public int Id { get; set; }

        public string Code { get; set; }
        
        public string Name { get; set; }
  
        [DisplayFormat(DataFormatString = "{0:dd MM yyyy}")]
        [DataType(DataType.Date)]
        public DateTime StartDate { get; set; }

        [DisplayFormat(DataFormatString = "{0:dd MM yyyy}")]
        [DataType(DataType.Date)]
        public DateTime EndDate { get; set; }

        public int StudentNumber { get; set; }

        #region Relationships

        public ICollection<CourseLecturer> CourseLecturers { get; set; }

        public ICollection<Lession> Lessions { get; set; }

        #endregion

        #region References

        public Semester Semester { get; set; }

        #endregion
    }
}
