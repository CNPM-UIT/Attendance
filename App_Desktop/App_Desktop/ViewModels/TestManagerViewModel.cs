using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;
using App_Desktop.Model;
using App_Desktop.Model.Class;
using App_Desktop.Views;
using IO.Swagger.Api;
using Prism.Commands;
using Prism.Mvvm;

namespace App_Desktop.ViewModels
{
    public class TestManagerViewModel : BindableBase
    {
        private TestsApi testApi;
        public ObservableCollection<int> NumberOfQuestions { get; set; }
        public int SelectedNumberOfQuestion { get; set; }
        public DelegateCommand CreateTestCommand { get; set; }

        public TestManagerViewModel()
        {
            Init();
            TestItemModels = new ObservableCollection<TestItemModel>()
            {
                new TestItemModel(0,"Abc",null,DateTime.Now,null,Enums.DiscusstionStatus.Opening),
                new TestItemModel(0,"Abc",null,DateTime.Now,null,Enums.DiscusstionStatus.Opening),
                new TestItemModel(0,"Abc",null,DateTime.Now,null,Enums.DiscusstionStatus.Closed),
                new TestItemModel(0,"Abc",null,DateTime.Now,null,Enums.DiscusstionStatus.Closed),
            };
        }

        public TestManagerViewModel(UICallback callback)
        {
            Init();
            LoadData(callback);
        }

        private async void LoadData(UICallback callback)
        {
            var result = await testApi.ApiTestsGetAsync();
            TestItemModels = new ObservableCollection<TestItemModel>(result.Select(TestItemModel.CreateFrom).ToList());
            
            callback.Execute();
        }

        private void Init()
        {
            NumberOfQuestions = new ObservableCollection<int>()
            {
                5, 10, 25, 40, 50, 100
            };
            SelectedNumberOfQuestion = NumberOfQuestions[0];
            CreateTestCommand = new DelegateCommand(CreateTest);
            testApi = new TestsApi();
        }

        public void CreateTest()
        {
            CreateUpdateTestViewModel vm = new CreateUpdateTestViewModel(SelectedNumberOfQuestion);
            CreateUpdateTest v = new CreateUpdateTest() {DataContext = vm};
            v.Show();
        }

        private ObservableCollection<TestItemModel> _testItemModels;

        public ObservableCollection<TestItemModel> TestItemModels
        {
            get { return _testItemModels; }
            set { SetProperty(ref _testItemModels, value); }
        }
    }
}