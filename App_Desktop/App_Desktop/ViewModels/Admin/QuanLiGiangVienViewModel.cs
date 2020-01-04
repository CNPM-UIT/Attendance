using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;
using App_Desktop.Model.Person;

namespace App_Desktop.ViewModels.Admin
{
    public class QuanLiGiangVienViewModel
    {
        public ObservableCollection<LecturerModel> Users { get; set; }

        public QuanLiGiangVienViewModel()
            {
            Users = new ObservableCollection<LecturerModel>()
            {
                new LecturerModel() { FirstName = "Nguyễn", LastName = "Văn A", LecturerCode = "16520792", GioiTinhBool = true, AcademicRankEnum = Enums.AcademicRank.Bachelor},
                new LecturerModel() { FirstName = "Lê", LastName = "Ngân Phương", LecturerCode = "16525555", GioiTinhBool = false, AcademicRankEnum = Enums.AcademicRank.Engineer}
            };
            }

    }
}
