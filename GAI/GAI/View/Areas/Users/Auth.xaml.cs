using GAI.BackEnd;
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

namespace GAI.View.Areas.Users
{
    /// <summary>
    /// Interaction logic for Auth.xaml
    /// </summary>
    public partial class Auth : Window
    {
        public Auth()
        {
            try
            {
                InitializeComponent();
                ViewModel.AreasViewModel.UsersViewModel.AuthViewModel.CloseWindow = new Action(() => this.Close());
                this.DataContext = new ViewModel.AreasViewModel.UsersViewModel.AuthViewModel();
            }
            catch (Exception ex)
            {
                SharedClass.MessageBoxErrorStatic(ex);
            }
            
        }
    }
}
