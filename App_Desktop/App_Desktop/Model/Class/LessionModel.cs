using App_Desktop.Model.Interaction;
using App_Desktop.Model.Person;
using App_Desktop.Model.QA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;
using IO.Swagger.Model;
using Prism.Commands;

namespace App_Desktop.Model.Class
{
    public class LessionModel
    {

        public int Id { get; set; }
        public string Id_string
        {
            get
            {
                return Id.ToString();
            }
        }

        public DelegateCommand ShowChiTietBuoiHocCommand { get; set; }
        public DateTime Time { get; set; }

        // Aggregation

        public LecturerModel Lecturer { get; set; }

        // Composition

        public ICollection<DiscussionModel> Discussions { get; set; }
        public ICollection<RateModel> Rates { get; set; }
        public ICollection<DocumentModel> Documents { get; set; }
        public ICollection<AttendanceModel> Attendances { get; set; }
        public ICollection<TestModel> Tests { get; set; }

        public static LessionModel CreateFrom(LessionDTO arg, LecturerModel lecturer)
        {
            return new LessionModel()
            {
                Id = arg.Id.Value,
                Time = DateTime.Parse(arg.Time),
                Lecturer = lecturer
            };
        }

        public LessionModel()
        {
            ShowChiTietBuoiHocCommand = new DelegateCommand(ShowChiTietBuoiHoc);
        }

        public void ShowChiTietBuoiHoc()
        {
            UserProfile.SelectedLession = this;
            UserProfile.MainWindow.ShowChiTietBuoiHoc();
        }
    }
}
