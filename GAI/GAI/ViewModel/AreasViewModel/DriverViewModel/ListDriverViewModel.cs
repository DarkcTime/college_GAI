using GAI.BackEnd;
using GAI.View.Areas.Users;
using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace GAI.ViewModel.AreasViewModel.DriverViewModel
{
    class ListDriverViewModel : SharedClass
    {

        Model.Areas.DriverClass DriverClass = new Model.Areas.DriverClass();

        #region Properties
        public ICommand SaveCommand { get; set; }

        public ICommand RemoveCommand { get; set; }

        public ICommand BackCommand { get; set; }

        private List<Model.Driver> _listDrivers;

        public List<Model.Driver> ListDrivers
        {
            get => this._listDrivers;
            set => Set<List<Model.Driver>>(ref _listDrivers, value);
        }


        public List<Model.Region> ListRegions { get; set; }

        public List<Model.Gender> ListGenders { get; set; }

        private Model.Driver _driver;

        public Model.Driver Driver
        {
            get => this._driver;
            set => Set<Model.Driver>(ref _driver, value);
        }
        


        #endregion


        public ListDriverViewModel()
        {
            try
            {
                this.SaveCommand = new Command(SaveCommandClick);
                this.RemoveCommand = new Command(RemoveCommandClick);
                this.BackCommand = new Command(BackCommandClick);

                this.ListDrivers = DriverClass.GetDrivers();
                LoadDataInComboBox();
                this.Driver = this.ListDrivers.FirstOrDefault();
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

     
        private void LoadDataInComboBox()
        {
            this.ListRegions = DriverClass.GetRegions();
            this.ListGenders = DriverClass.GetGenders();
        }

        private void SaveCommandClick(object obj)
        {
            try
            {
                MessageBoxInformation("Данные о записи успешно отредактированы");
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }


        private void RemoveCommandClick(object obj)
        {
            try
            {
                MessageBoxInformation("Запись успешно удалена из таблицы");
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            };
        }

        private void BackCommandClick(object obj)
        {
            try
            {
                SetPage(new MainMenu());
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

    }
}
