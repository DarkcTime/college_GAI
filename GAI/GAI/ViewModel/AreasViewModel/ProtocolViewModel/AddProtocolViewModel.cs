using GAI.BackEnd;
using GAI.Model.Areas;
using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace GAI.ViewModel.AreasViewModel.ProtocolViewModel
{
    class AddProtocolViewModel : SharedClass
    {

        private Model.Areas.ProtocolClass ProtocolClass = new Model.Areas.ProtocolClass();

        #region properties


        private Model.Protocol _selectedProtocol;

        public Model.Protocol SelectedProtocol
        {
            get => this._selectedProtocol;
            set => this.Set<Model.Protocol>(ref _selectedProtocol, value);
        }

        public List<Model.Driver> ListOfDrivers { get; set; }

        public List<Model.TransportVehicle> ListTransportVehicle { get; set; }

        public List<Model.TypeOfViolation> ListViolations { get; set; }

        public ICommand AddNewProtocolCommand { get; set; }
        public ICommand BackCommand { get; set; }
        #endregion

        public AddProtocolViewModel()
        {
            try
            {
                //SelectedProtocol.

                this.AddNewProtocolCommand = new Command(AddNewProtocolCommandClick);
                this.BackCommand = new Command(BackCommandClick);

                LoadDataInComboBox();

                this.SelectedProtocol = new Model.Protocol();
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }

        }
        private void LoadDataInComboBox()
        {
            this.ListTransportVehicle = ProtocolClass.GetTransportVehicles();
            this.ListOfDrivers = ProtocolClass.GetDrivers();
            this.ListViolations = ProtocolClass.GetTypeOfViolations();
        }

        private void AddNewProtocolCommandClick(object obj)
        {
            try
            {
                ProtocolClass.AddNewProtocol(SelectedProtocol);
                SharedModel.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        private void BackCommandClick(object obj)
        {
            try
            {
                SetPage(new View.Areas.Users.MainMenu());
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        
    }
}
