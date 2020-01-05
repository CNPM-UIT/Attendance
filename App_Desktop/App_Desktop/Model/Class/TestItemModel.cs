using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Data;
using IO.Swagger.Model;

namespace App_Desktop.Model.Class
{
    public class TestItemModel
    {
        private int id;
        private String name;
        private DateTime? deadline;
        private Enums.DiscusstionStatus status;
        public DelegateCommand DeleteTestCommand { get; private set; }

        public TestItemModel(int id, string name, DateTime? createdDateTime, DateTime? deadline,
            TimeSpan? duration, Enums.DiscusstionStatus status) : this()
        {
            this.id = id;
            this.name = name;
            this.deadline = deadline;
            this.status = status;
        }

        public TestItemModel()
        {

            this.DeleteTestCommand = new DelegateCommand(DeleteTest, CanDeleteTest);
        }

        public static TestItemModel CreateFrom(TestDTO testDTO)
        {
            return new TestItemModel(testDTO.Id.Value,
                testDTO.Title, null, DateTime.Parse(testDTO.Deadline),
                null, (Enums.DiscusstionStatus)testDTO.Status
                );
        }
        private bool CanDeleteTest()
        {
            return this.status != Enums.DiscusstionStatus.Closed;
        }

        public String Status
        {
            get { return status.ToString(); }
        }

        private void DeleteTest()
        {

        }
        public DateTime? Deadline
        {
            get => deadline;
            set => deadline = value;
        }


        public string Name
        {
            get => name;
            set => name = value;
        }

        public int Id
        {
            get => id;
            set => id = value;
        }



    }
}
