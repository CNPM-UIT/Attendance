using App_Desktop.Data;
using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Interaction
{
    public class AttendanceModel
    {
        public int Id { get; set; }

        public Enums.AttendanceStatus AttendanceStatus { get; set; }

        // Aggregation

        public StudentModel Student { get; set; }
    }
}
