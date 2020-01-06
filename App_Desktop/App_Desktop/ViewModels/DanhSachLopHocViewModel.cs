using App_Desktop.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.ViewModels
{
    class DanhSachLopHocViewModel
    {
       

        public ObservableCollection<ClassModel> ObjClass { get; set; }
        public DanhSachLopHocViewModel()
        {
            ObjClass = new ObservableCollection<ClassModel>()
            {
                new ClassModel() { ClassCode = "J21.K11", Name = "Nhập môn lập trình", StartDate = new DateTime(2000, 9, 2), EndDate = new DateTime(2001, 10,10)},
                new ClassModel() { ClassCode = "H22.K13", Name = "Nhập môn giải tích", StartDate = new DateTime(2000, 9, 2), EndDate = new DateTime(2001, 10,10) },
            };
        }


    }
}
