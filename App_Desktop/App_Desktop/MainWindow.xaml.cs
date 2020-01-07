using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using App_Desktop.Data;
using App_Desktop.Model;
using App_Desktop.Model.Person;
using App_Desktop.ViewModels;
using App_Desktop.Views;

namespace App_Desktop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<StudentModel> users = new List<StudentModel>();
        public MainWindow()
        {
            InitializeComponent();
            UserProfile.MainWindow = this;
            //diemDanhRadioButton.IsChecked = true;
            initGrid();
            InitSubtitle();
        }

        private void InitSubtitle()
        {
            SubtitleHolder.Children.Clear();
            SubtitleHolder.Children.Add(new Subtitle()
            {
                DataContext = new SubtitleViewModel(new UICallback(), this)
            });
        }

        private void DiemDanh()
        {
            //users = new List<StudentModel>();
            //users.Add(new StudentModel() { Id = 4, Name = "John Doe", StudentCode = "16520111", });
            //users.Add(new StudentModel() { Id = 5, Name = "Jane Doe", StudentCode = "16520113" });
            //users.Add(new StudentModel() { Id = 6, Name = "Sammy Doe", StudentCode = "16520114" });
            //Quanlidiemdanh.ItemsSource = users;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // textbox.Text = "Hello Ngan!"; 
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {

        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
        private void Button_Click_QuanLiBuoiHoc(object sender, RoutedEventArgs e)
        {
            DanhSachQuanLiThongKe.Visibility = Visibility.Hidden;
            Grid_DanhSach.Visibility = Visibility.Visible;
            Grid_DanhSach.Children.Clear();
            Grid_DanhSach.Children.Add(new DanhSachBuoiHoc()
                {DataContext = new DanhSachBuoiHocViewModel(new UICallback())});
        }

        private void Button_Click_QuanLiThongKe(object sender, RoutedEventArgs e)
        {
            DanhSachQuanLiThongKe.Visibility = Visibility.Visible;
            Grid_DanhSach.Visibility = Visibility.Hidden;
        }

        private void Button_Click_QuanLiTaiLieu(object sender, RoutedEventArgs e)
        {
            //Grid_DanhSachBuoiHoc.Visibility = Visibility.Hidden;
            DanhSachQuanLiThongKe.Visibility = Visibility.Hidden;
            Grid_DanhSach.Visibility = Visibility.Visible;
            Grid_DanhSach.Children.Clear();
            Grid_DanhSach.Children.Add(new DanhSachTaiLieu()
            {
                DataContext = new DanhSachTaiLieuViewModel(new UICallback())
            });

        }

        public void ChangeDanhSachLopHoc(int semeterId)
        {
            if (!this.IsInitialized) return;
            QuanLiLopHoc.Visibility = Visibility.Hidden;
            Grid_DanhSachLopHoc.Visibility = Visibility.Visible;
            Grid_DanhSachLopHoc.Children.Clear();
            Grid_DanhSachLopHoc.Children.Add(new DanhSachLopHoc()
            {
                DataContext = new DanhSachLopHocViewModel(new UICallback(), semeterId)
            });
            
        }

        private void BasicRatingBar_ValueChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        public void ShowQuanLyLopHoc()
        {

            QuanLiLopHoc.Visibility = Visibility.Visible;
            Grid_DanhSachLopHoc.Visibility = Visibility.Hidden;
        }
        private void RadioButton_Checked_DanhGia(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiDanhGia.Visibility = Visibility.Visible;
            Grid_QuanLiDiemDanh.Visibility = Visibility.Hidden;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
        }

        private void RadioButton_Checked_ThaoLuan(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiThaoLuan.Visibility = Visibility.Visible;
            Grid_QuanLiDiemDanh.Visibility = Visibility.Hidden;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
        }

        private void RadioButton_Checked_KiemTra(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiKiemTra.Visibility = Visibility.Visible;
            Grid_QuanLiDiemDanh.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
            Grid_QuanLiKiemTra.Children.Clear();
            Grid_QuanLiKiemTra.Children.Add(new TestManager(){DataContext = new TestManagerViewModel(new UICallback()) });

        }

        private void RadioButton_Checked_DiemDanh(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiDiemDanh.Visibility = Visibility.Visible;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
            Grid_QuanLiDiemDanh.Children.Clear();
            Grid_QuanLiDiemDanh.Children.Add(new DiemDanh()
            {
                DataContext = new DiemDanhViewModel(new UICallback())
            });
            //DiemDanh();


        }
        private void Checkbox_DiemDanh(object sender, RoutedEventArgs e)
        {
       
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void ComboBox_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {

        }


        public DataTable GetDetails()
        {
            // Some Codes here
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("MSSV");
            dt.Columns.Add("Name");
            int sid = 0;
            DataRow row = dt.NewRow();
            row["ID"] = sid;
            sid++;
            row["MSSV"] = "1620792";
            row["Name"] = "Lê Thị Phương Ngân";
            dt.Rows.Add(row);
            row = dt.NewRow();
            row["id"] = sid;
            sid++;
            row["MSSV"] = "16207215";
            row["Name"] = "Lê Thị Ngân Phương";
            dt.Rows.Add(row);

            return dt;
        }

        private void initGrid()
        {
            DataTable dt = GetDetails();
            DiemDanhGridView.DataContext = dt.AsDataView();
        }
    }
}
