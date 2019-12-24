using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.QA
{
    public class QuestionModel
    {

        public string Content { get; set; }

        public int Solution { get; set; }

        // Composition

        public ICollection<OptionModel> Options { get; set; }
    }
}
