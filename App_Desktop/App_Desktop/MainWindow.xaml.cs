using System;
using System.Collections.Generic;
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
using App_Desktop.Model.Person;

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
            //diemDanhRadioButton.IsChecked = true;
        }

        private void DiemDanh()
        {
            users = new List<StudentModel>();
            users.Add(new StudentModel() { Id = 4, Name = "John Doe", StudentCode = "16520111", });
            users.Add(new StudentModel() { Id = 5, Name = "Jane Doe", StudentCode = "16520113" });
            users.Add(new StudentModel() { Id = 6, Name = "Sammy Doe", StudentCode = "16520114" });
            Quanlidiemdanh.ItemsSource = users;
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
            DanhSachBuoiHoc.Visibility = Visibility.Visible;
            DanhSachQuanLiThongKe.Visibility = Visibility.Hidden;
            DanhSachTaiLieu.Visibility = Visibility.Hidden;
        }

        private void Button_Click_QuanLiThongKe(object sender, RoutedEventArgs e)
        {
            DanhSachQuanLiThongKe.Visibility = Visibility.Visible;
            DanhSachBuoiHoc.Visibility = Visibility.Hidden;
            DanhSachTaiLieu.Visibility = Visibility.Hidden;
        }

        private void Button_Click_QuanLiTaiLieu(object sender, RoutedEventArgs e)
        {
            DanhSachTaiLieu.Visibility = Visibility.Visible;
            DanhSachBuoiHoc.Visibility = Visibility.Hidden;
            DanhSachQuanLiThongKe.Visibility = Visibility.Hidden;

        }

        private void ComboBox_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private void BasicRatingBar_ValueChanged(object sender, SelectionChangedEventArgs e)
        {

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

        }

        private void RadioButton_Checked_DiemDanh(object sender, RoutedEventArgs e)
        {
            Grid_QuanLiDiemDanh.Visibility = Visibility.Visible;
            Grid_QuanLiKiemTra.Visibility = Visibility.Hidden;
            Grid_QuanLiThaoLuan.Visibility = Visibility.Hidden;
            Grid_QuanLiDanhGia.Visibility = Visibility.Hidden;
            DiemDanh();


        }
        private void Checkbox_DiemDanh(object sender, RoutedEventArgs e)
        {
        //    if(Checkbox_AllDiemdanh.IsChecked==true)
        //    {

        //        int i = 0;
        //        for(i = 0; i<users.Count;i++)
        //        {
        //            users[i].DiHoc = true;
        //        }
        //    }
        //    else
        //    {
        //        int i = 0;
        //        for (i = 0; i < users.Count; i++)
        //        {
        //            users[i].DiHoc = false;
        //        }
        //    }
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void ComboBox_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
