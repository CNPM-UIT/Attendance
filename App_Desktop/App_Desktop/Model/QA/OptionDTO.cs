using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class OptionDTO
    {
        public int Id { get; set; }

        public string Content { get; set; }

        #region References

        public int QuestionDTO { get; set; }

        #endregion
    }
}
