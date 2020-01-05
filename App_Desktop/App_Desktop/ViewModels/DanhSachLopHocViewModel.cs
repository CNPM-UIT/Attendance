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
                new ClassModel() { ClassCode = "J21.K11", Name = "Nhập môn lập trình", StartDate = DateTime(2005, 11, 20), EndDate = DateTime(2019, 05, 03) },
                new ClassModel() { ClassCode = "H22.K13", Name = "Nhập môn giải tích", StartDate = DateTime(2018, 10, 22), EndDate = DateTime(2019, 01, 01) },
            };
        }

        private DateTime DateTime(int v1, int v2, int v3)
        {
            throw new NotImplementedException();
        }
    }
}
