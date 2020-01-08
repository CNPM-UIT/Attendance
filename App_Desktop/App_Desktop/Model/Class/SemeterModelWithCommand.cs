using IO.Swagger.Api;
using IO.Swagger.Model;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace App_Desktop.Model.Class
{
    class SemesterModelWithCommand:SemesterModel
    {
        private SemestersApi SemestersApi = new SemestersApi();
       
        public DelegateCommand CreateCommand { get; set; }
        public Action RefreshUI { get; set; }

        public SemesterModelWithCommand()
        {
            
            CreateCommand = new DelegateCommand(Create);
        }

        private async void Create()
        {
            SemesterDTO createDto = this.CreateTo();
            SemesterDTO result = await SemestersApi.ApiSemestersPostAsync(createDto);
            if (result != null)
            {
                MessageBox.Show("Success!");
            }
            else
            {
                MessageBox.Show("Failure");
            }
            RefreshUI();
        }

        private SemesterDTO CreateTo()
        {
            return new SemesterDTO()
            {
                Id = this.Id,
                Name = this.Name
            };
        }
    }
}
