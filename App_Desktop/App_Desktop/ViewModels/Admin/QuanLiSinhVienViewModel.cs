using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model.Person;

namespace App_Desktop.ViewModels.Admin
{
    public class QuanLiSinhVienViewModel
    {
        public ObservableCollection<StudentModel> Users { get; set; }

        public QuanLiSinhVienViewModel()
            {
            Users = new ObservableCollection<StudentModel>()
            {
                new StudentModel() { FirstName = "Lê", LastName = "Phương Ngân", StudentCode = "16520792", GioiTinhBool = true},
                new StudentModel() { FirstName = "Lê", LastName = "Ngân Phương", StudentCode = "16525555", GioiTinhBool = false }
            };
            }

    }
}
