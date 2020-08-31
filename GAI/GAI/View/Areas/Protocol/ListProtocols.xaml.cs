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

namespace GAI.View.Areas.Protocol
{
    /// <summary>
    /// Interaction logic for ListProtocols.xaml
    /// </summary>
    public partial class ListProtocols : Page
    {
        public ListProtocols()
        {
            InitializeComponent();
            this.DataContext = new ViewModel.AreasViewModel.ProtocolViewModel.ListProtocolsViewModel();
        }
    }
}
