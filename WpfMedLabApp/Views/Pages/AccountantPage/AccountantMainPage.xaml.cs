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

namespace WpfMedLabApp.Views.Pages.AccountantPage
{
    /// <summary>
    /// Логика взаимодействия для AccountantMainPage.xaml
    /// </summary>
    public partial class AccountantMainPage : Page
    {
        public AccountantMainPage()
        {
            InitializeComponent();
        }

        private void ReportsBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ReportsDataPage());
        }

        private void InvoiceBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        
    }
}
