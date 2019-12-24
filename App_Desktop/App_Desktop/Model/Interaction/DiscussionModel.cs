using App_Desktop.Data;
using App_Desktop.Model.Interaction;
using System.Collections.Generic;

namespace App_Desktop.Model.Class
{
    public class DiscussionModel
    {
        public int Id { get; set; }

        public Enums.DiscusstionStatus Status { get; set; }

        // Composition

        public ICollection<LecturerMessageModel> LecturerMessages { get; set; }
        public ICollection<StudentMessageModel> StudentMessages { get; set; }
    }
}