﻿using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Interaction
{
    public class ReportModel
    {
        public int Id { get; set; }

        public string Comment { get; set; }

        // Aggregation

        public StudentModel ReportPerson { get; set; }
    }
}