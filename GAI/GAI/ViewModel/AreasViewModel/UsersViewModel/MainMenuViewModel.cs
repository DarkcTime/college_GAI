using GAI.BackEnd;
using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace GAI.ViewModel.AreasViewModel.UsersViewModel
{
    class MainMenuViewModel : SharedClass
    {
        #region properties
        public ICommand ProtocolCommand { get; set; }

        public ICommand AddCommand { get; set; }

        #endregion 


        public MainMenuViewModel()
        {
            try
            {
                this.ProtocolCommand = new Command(ProtocolCommandClick);
                this.AddCommand = new Command(AddCommandClick);
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        private void AddCommandClick(object obj)
        {
            try
            {
                SetPage(new View.Areas.Protocol.AddProtocol());
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);    
            }
        }

        private void ProtocolCommandClick(object obj)
        {
            try
            {
                SetPage(new View.Areas.Protocol.ListProtocols());
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }
    }
}
