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
using System.Windows.Shapes;
using WpfMedLabApp.Views.Pages.LaborantPages;

namespace WpfMedLabApp.Views.Windows
{
    /// <summary>
    /// Логика взаимодействия для LaborantWindow.xaml
    /// </summary>
    public partial class LaborantWindow : Window
    {
        public LaborantWindow()
        {
            InitializeComponent();
            LaborantFrame.Navigate(new LaborantMainPage());
        }
    }
}
