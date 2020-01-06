using App_Desktop.Model.Class;
using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model
{
    public class ClassModel
    {
        public string Id { get; set; }
        public string ClassCode { get; set; }
        public string Name { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int StudentNumberLimit { get; set; }
        public string StartDate_String
        {
            get
            {
                string[] formattedStrings = StartDate.GetDateTimeFormats();
                return formattedStrings[8];
            }

        }

        public string EndDate_String
        {
            get
            {
                return EndDate.ToString();
            }

        }

        // Aggregation
        public SemesterModel Semester { get; set; }
        public ICollection<LecturerModel> TheoreticalLecturers { get; set; }
        public ICollection<LecturerModel> PracticalLecturers { get; set; }

        // Composition
        public ICollection<LessionModel> Lessions { get; set; }

    }
}
