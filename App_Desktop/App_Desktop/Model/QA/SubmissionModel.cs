using App_Desktop.Model.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class SubmissionModel
    {
        public int Id { get; set; }

        public DateTime Time { get; set; }

        public int? Point { get; set; }

        // Aggregation

        public StudentModel Student { get; set; }

        // Composition

        public ICollection<AnswerModel> Answers { get; set; }
    }
}
