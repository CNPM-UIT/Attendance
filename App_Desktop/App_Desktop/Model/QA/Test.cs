using App_Desktop.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class TestModel
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public DateTime Deadline { get; set; }

        public Enums.DiscusstionStatus Status { get; set; }

        // Composition

        public ICollection<QuestionModel> Questions { get; set; }
        public ICollection<SubmissionModel> Submissions { get; set; }
    }
}
