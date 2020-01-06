using App_Desktop.Model.Interaction;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model;
using IO.Swagger.Api;
using Prism.Mvvm;

namespace App_Desktop.ViewModels
{
    class DanhSachTaiLieuViewModel : BindableBase
    {

        public ObservableCollection<DocumentModel> _objDocument;

        public ObservableCollection<DocumentModel> ObjDocument
        {
            get { return _objDocument; }
            set { SetProperty(ref _objDocument, value); }
        }

        public DanhSachTaiLieuViewModel()
        {
            Init();
            ObjDocument = new ObservableCollection<DocumentModel>()
            {
                new DocumentModel() {Name = "Chương 2: Lập trình hướng đối tượng với C++", Link = "google.com.vn/OOP"},
                new DocumentModel() {Name = "Chương 3: Lập trình frontend", Link = "google.com.vn/OOP"},
            };
        }

        public DanhSachTaiLieuViewModel(UICallback uiCallback)
        {
            Init();
            LoadData(uiCallback);
        }

        private async void LoadData(UICallback uiCallback)
        {
            var result = documentsApi.ApiDocumentsGet();
            ObjDocument = new ObservableCollection<DocumentModel>(result.Select(DocumentModel.CreateFrom).ToList());
            uiCallback.Execute();
        }
        private DocumentsApi documentsApi;

        private void Init()
        {
            documentsApi = new DocumentsApi();
        }
    }
}
