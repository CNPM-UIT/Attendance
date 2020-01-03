using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Interaction
{
    public class MessageModel
    {
        public int Id { get; set; }

        public DateTime Time { get; set; }

        public string Content { get; set; }

        // Composition

        public ICollection<ReportModel> Reports { get; set; }
    }
}
