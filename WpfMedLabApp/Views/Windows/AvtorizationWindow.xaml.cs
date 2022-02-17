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
using WpfMedLabApp.Context;
using WpfMedLabApp.Views.Windows;

namespace WpfMedLabApp
{
    /// <summary>
    /// Логика взаимодействия для AvtorizationWindow.xaml
    /// </summary>
    public partial class AvtorizationWindow : Window
    {
        public AvtorizationWindow()
        {
            InitializeComponent();
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (txbPassword.Text == "" && txbLogin.Text == "")
                {
                    throw new Exception("Заполните все поля");
                }
                else
                {
                    // Запрос на авторизацию
                    var currentUser = Data.ml.User.FirstOrDefault(item => item.UserName == txbLogin.Text && item.Password == psbPassword.Password || txbPassword.Text == item.Password);
                    if (currentUser != null)
                    {
                        switch (currentUser.IDRole)
                        {
                            case "a":
                                AdminWindow adminWindow = new AdminWindow();
                                adminWindow.ShowDialog();
                                break;
                            case "b":
                                AccountantWindow accountantWindow = new AccountantWindow();
                                accountantWindow.ShowDialog();
                                break;
                            case "l":
                                LaborantWindow laborantWindow = new LaborantWindow();
                                laborantWindow.ShowDialog();
                                break;
                        }
                    }
                    else
                    {
                        throw new Exception("Пользователь не найден");
                    }
                }

            }
            catch
            {

            }
        }

        private void HideseeBtn_Click(object sender, RoutedEventArgs e)
        {
            if (HidePassword.Visibility == Visibility.Collapsed)
            {
                HidePassword.Visibility = Visibility.Visible;
                SeePassword.Visibility = Visibility.Collapsed;
            }
            else
            {
                HidePassword.Visibility = Visibility.Collapsed;
                SeePassword.Visibility = Visibility.Visible;
            }
        }

        private void SeeBtn_Click(object sender, RoutedEventArgs e)
        {
            if (SeePassword.Visibility == Visibility.Collapsed)
            {
                HidePassword.Visibility = Visibility.Collapsed;
                SeePassword.Visibility = Visibility.Visible;
            }
            else
            {
                HidePassword.Visibility = Visibility.Visible;
                SeePassword.Visibility = Visibility.Collapsed;
            }
        }

        private void psbPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            txbPassword.Text = psbPassword.Password;
        }
    }
}
