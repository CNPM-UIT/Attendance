using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class QuestionDTO
    {
        public int Id { get; set; }

        public string Content { get; set; }

        public int Solution { get; set; }

        #region Reference

        public int TestId { get; set; }

        #endregion
    }
}
