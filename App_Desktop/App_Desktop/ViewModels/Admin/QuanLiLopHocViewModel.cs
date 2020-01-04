using App_Desktop.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.ViewModels.Admin
{
    class QuanLiLopHocViewModel
    {
        public ObservableCollection<ClassModel> Class { get; set; }

        public QuanLiLopHocViewModel()
        {
            Class = new ObservableCollection<ClassModel>()
            {
                new ClassModel() {ClassCode = "J21.K11", Name = "Nhập môn lập trình" },
                new ClassModel() {ClassCode = "H22.K13", Name = "Nhập môn giải tích" }
            };
        }
    }
}
