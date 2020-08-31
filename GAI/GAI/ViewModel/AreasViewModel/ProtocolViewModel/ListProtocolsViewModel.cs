using GAI.BackEnd;
using GAI.Model.Areas;
using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace GAI.ViewModel.AreasViewModel.ProtocolViewModel
{
    class ListProtocolsViewModel : SharedClass
    {
        private Model.Areas.ProtocolClass ProtocolClass = new Model.Areas.ProtocolClass();

        #region properties

        private List<Model.Protocol> _listProtocols;

        public List<Model.Protocol> ListProtocols
        {
            get => this._listProtocols;
            set => Set<List<Model.Protocol>>(ref _listProtocols, value); 
        }

        private Model.Protocol _selectedProtocol;

        public Model.Protocol SelectedProtocol
        {
            get => this._selectedProtocol;
            set => this.Set<Model.Protocol>(ref _selectedProtocol, value); 
        }


        public List<Model.Driver> ListOfDrivers { get; set; }

        public List<Model.TransportVehicle> ListTransportVehicle { get; set; }

        public List<Model.TypeOfViolation> ListViolations { get; set; }

        public ICommand SaveCommand { get; set; }
        public ICommand RemoveCommand { get; set; }
        public ICommand BackCommand { get; set; }
        #endregion


        public ListProtocolsViewModel()
        {
            try
            {
                //SelectedProtocol.
                this.SaveCommand = new Command(SaveCommandClick);
                this.RemoveCommand = new Command(RemoveCommandClick);
                this.BackCommand = new Command(BackCommandClick);

                this.ListProtocols = ProtocolClass.GetProtocols();
                setFirstOrDefautlProtocol();
                LoadDataInComboBox(); 
            }
            catch (Exception ex)
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

        private void setFirstOrDefautlProtocol()
        {
            this.SelectedProtocol = this.ListProtocols.FirstOrDefault();
        }

        private void UpdateDataGrid()
        {
            this.ListProtocols = null;
            this.ListProtocols = ProtocolClass.GetProtocols();
        }

        private void BackCommandClick(object obj)
        {
            try
            {
                SetPage(new View.Areas.Users.MainMenu());
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        private void RemoveCommandClick(object obj)
        {
            try
            {
                ProtocolClass.RemoveProtocol(SelectedProtocol);
                SharedModel.SaveChanges();
                UpdateDataGrid();
                MessageBoxInformation("Данные о протоколе успешно удалены из таблицы");
                setFirstOrDefautlProtocol();            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        private void SaveCommandClick(object obj)
        {
            try
            {
                SharedModel.SaveChanges();
                UpdateDataGrid();
                MessageBoxInformation("Данные успешно отредактированы");
                setFirstOrDefautlProtocol();
            }
            catch (ArgumentException ae)
            {
                MessageBoxWarning("Все поля должны быть заполненны");
            }
            catch (UpdateException ue)
            {
                MessageBoxWarning("Ошибка при сохранении записи");
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }
    }
}
