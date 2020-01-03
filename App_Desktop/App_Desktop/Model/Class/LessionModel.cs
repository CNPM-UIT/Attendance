using App_Desktop.Model.Interaction;
using App_Desktop.Model.Person;
using App_Desktop.Model.QA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Class
{
    public class LessionModel
    {

        public int Id { get; set; }

        public DateTime Time { get; set; }

        // Aggregation

        public LecturerModel Lecturer { get; set; }

        // Composition

        public ICollection<DiscussionModel> Discussions { get; set; }
        public ICollection<RateModel> Rates { get; set; }
        public ICollection<DocumentModel> Documents { get; set; }
        public ICollection<AttendanceModel> Attendances { get; set; }
        public ICollection<TestModel> Tests { get; set; }
    }
}
