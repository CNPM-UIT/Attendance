using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App_Desktop.Model;
using App_Desktop.Model.Class;

namespace App_Desktop.Data
{
    public static class UserProfile
    {
        public static MainWindow MainWindow { get; set; }
        public static ClassModel SelectedClass { get; set; }
        public static LessionModel SelectedLession { get; set; }
    }
}
