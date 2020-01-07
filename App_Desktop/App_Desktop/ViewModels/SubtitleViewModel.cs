using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model;
using App_Desktop.Model.Class;
using IO.Swagger.Api;
using Prism.Mvvm;

namespace App_Desktop.ViewModels
{
    public class SubtitleViewModel : BindableBase
    {
        private MainWindow mainWindow;
        private ObservableCollection<SemesterModel> _semesterModels;

        public ObservableCollection<SemesterModel> SemesterModels
        {
            get { return _semesterModels; }
            set { SetProperty(ref _semesterModels, value); }
        }
        public SemesterModel _selectedSemesterModel;

        public SemesterModel SelectedSemesterModel
        {
            get { return _selectedSemesterModel; }
            set
            {
                SetProperty(ref _selectedSemesterModel, value);
                if(this.mainWindow != null) this.mainWindow.ChangeDanhSachLopHoc(value.Id);
            }
        }

        public SubtitleViewModel()
        {
            Init();
            SemesterModels = new ObservableCollection<SemesterModel>()
            {
                new SemesterModel(){ ClassCode = "HK1", Id= 0,Name="Semeter"},
                new SemesterModel(){ ClassCode = "HK2", Id= 1,Name="Semeter 2"},
            };
            SelectedSemesterModel = SemesterModels[0];
        }
        public SubtitleViewModel(UICallback uiCallback, MainWindow mainWindow)
        {
            Init();
            this.mainWindow = mainWindow;
            LoadData(uiCallback);
        }

        private SemestersApi semesterApi;
        public void Init()
        {
            semesterApi = new SemestersApi();
        }

        public async void LoadData(UICallback uiCallback)
        {
            var result = await semesterApi.ApiSemestersGetAsync();
            
            SemesterModels = new ObservableCollection<SemesterModel>(result.Select(SemesterModel.CreateFrom).ToList());
            SelectedSemesterModel = SemesterModels[0];
            uiCallback.Execute();
        }
    }
}
