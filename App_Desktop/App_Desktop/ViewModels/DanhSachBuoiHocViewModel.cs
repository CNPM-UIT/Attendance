using App_Desktop.Model.Class;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.ViewModels
{
    class DanhSachBuoiHocViewModel
    {
        public ObservableCollection<LessionModel> ObjLession { get; set; }
        public DanhSachBuoiHocViewModel()
        {
            ObjLession = new ObservableCollection<LessionModel>()
            {
                new LessionModel() { Id = 1, Time = new DateTime(2000, 9, 2)},
                new LessionModel() { Id = 2, Time = new DateTime(2000, 9, 2) },
            };
        }
    }
}
