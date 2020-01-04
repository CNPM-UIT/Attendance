using App_Desktop.Model.Class;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.ViewModels.Admin
{
    class QuanLiHocKyViewModel
    {
        public ObservableCollection<SemesterModel> HK { get; set; }

        public QuanLiHocKyViewModel()
        {
            HK = new ObservableCollection<SemesterModel>()
            {
                new SemesterModel() {Name="HK1 2019" },
                new SemesterModel() {Name = "HK2 2019"}
            };
        }
    }
}
