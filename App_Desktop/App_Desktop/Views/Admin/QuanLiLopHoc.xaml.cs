﻿using System;
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

namespace App_Desktop.Views.Admin
{
    /// <summary>
    /// Interaction logic for QuanLiLopHoc.xaml
    /// </summary>
    public partial class QuanLiLopHoc : UserControl
    {
        public QuanLiLopHoc()
        {
            InitializeComponent();
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Grid_ThemLopHoc.IsEnabled = true;
        }

        private void textBoxMSLH_TextChanged(object sender, TextChangedEventArgs e)
        {
            
        }
    }
}