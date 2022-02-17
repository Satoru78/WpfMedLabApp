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

namespace WpfMedLabApp.Views.Pages.LaborantPages
{
    /// <summary>
    /// Логика взаимодействия для LaborantMainPage.xaml
    /// </summary>
    public partial class LaborantMainPage : Page
    {
        public LaborantMainPage()
        {
            InitializeComponent();
        }

        private void AnalyzerBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AnalyzerPage());
        }
    }
}
