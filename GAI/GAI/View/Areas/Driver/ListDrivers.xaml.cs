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

namespace GAI.View.Areas.Driver
{
    /// <summary>
    /// Interaction logic for ListDrivers.xaml
    /// </summary>
    public partial class ListDrivers : Page
    {
        public ListDrivers()
        {
            InitializeComponent();
            this.DataContext = new ViewModel.AreasViewModel.DriverViewModel.ListDriverViewModel();
        }
    }
}
