using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Class
{
    public class TestItemDetailModel : TestItemModel
    {
        private ObservableCollection<TestQuestion> testQuestions;
        public TestItemDetailModel(int id, string name, DateTime createdDateTime, DateTime? testedDateTime, TimeSpan duration, ObservableCollection<TestQuestion> testQuestions) : base(id, name, createdDateTime, testedDateTime, duration)
        {
            this.TestQuestions = testQuestions;
        }

        public TestItemDetailModel(int numberOfQuestion) : base(-1, "", DateTime.Now, null, new TimeSpan(0, 0, 45, 0))
        {
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
