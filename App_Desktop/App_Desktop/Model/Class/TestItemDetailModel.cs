using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;

namespace App_Desktop.Model.Class
{
    public class TestItemDetailModel
    {
        private TestItemModel TestItemModel { get; }
        private ObservableCollection<TestQuestion> testQuestions;

        public TestItemDetailModel(int numberOfQuestion, TestItemModel testItemModel)
        {
            this.TestItemModel = testItemModel;
            this.TestQuestions = new ObservableCollection<TestQuestion>();

            for (int i = 0; i < numberOfQuestion; i++)
            {
                TestQuestions.Add(new TestQuestion());
            }
        }

        public ObservableCollection<TestQuestion> TestQuestions
        {
            get => testQuestions;
            set => testQuestions = value;
        }
    }
}
