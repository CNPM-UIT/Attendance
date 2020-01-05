using App_Desktop.Model.Class;
using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IO.Swagger.Model;

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

        // Aggregation
        public SemesterModel Semester { get; set; }
        public ICollection<LecturerModel> TheoreticalLecturers { get; set; }
        public ICollection<LecturerModel> PracticalLecturers { get; set; }

        // Composition
        public ICollection<LessionModel> Lessions { get; set; }

        public static ClassModel CreateFrom(CourseDTO arg, SemesterModel semester)
        {
            return new ClassModel()
            {
                Id = arg.Id.Value.ToString(),
                ClassCode =  arg.Code,
                Name = arg.Name,
                StartDate =  DateTime.Parse(arg.StartDate),
                EndDate = DateTime.Parse(arg.EndDate),
                StudentNumberLimit = 40,
                Semester = semester

            };
        }
    }
}
