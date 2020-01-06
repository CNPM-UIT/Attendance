using App_Desktop.Model.Interaction;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.ViewModels
{
    class DanhSachTaiLieuViewModel
    {
        
            public ObservableCollection<DocumentModel> ObjDocument { get; set; }
            public DanhSachTaiLieuViewModel()
            {
                ObjDocument = new ObservableCollection<DocumentModel>()
            {
                new DocumentModel() { Name = "Chương 2: Lập trình hướng đối tượng với C++", Link = "google.com.vn/OOP"},
                new DocumentModel() { Name = "Chương 3: Lập trình frontend", Link = "google.com.vn/OOP" },
            };
            }
    }
}
