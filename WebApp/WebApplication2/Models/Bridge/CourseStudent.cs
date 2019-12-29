﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;

namespace WebApplication2.Models
{
    public class CourseStudent
    {
        [Key]
        public int Id { get; set; }

        #region References

        public Course Course { get; set; }

        public Student Student { get; set; }

        #endregion
    }
}