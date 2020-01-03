using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class AnswerDTO
    {
        public int Id { get; set; }

        public int QuestionId { get; set; }

        public int SelectionId { get; set; }

        #region References

        public int SubmissionId { get; set; }

        #endregion
    }
}
