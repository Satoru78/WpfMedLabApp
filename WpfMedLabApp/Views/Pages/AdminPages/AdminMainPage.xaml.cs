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
using WpfMedLabApp.Views.Pages.AdminPages.Materials;

namespace WpfMedLabApp.Views.Pages.AdminPages
{
    /// <summary>
    /// Логика взаимодействия для AdminMainPage.xaml
    /// </summary>
    public partial class AdminMainPage : Page
    {
        public AdminMainPage()
        {
            InitializeComponent();
        }

        private void ReportCreateBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ReportCreatePage());
        }

        private void LoginedHistory_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new LoginedHistoryPage());
        }

        private void MaterialsBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MaterialDataPage());
        }
    }
}
