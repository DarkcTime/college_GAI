using GAI.BackEnd;
using GAI.Model.Areas;
using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace GAI.ViewModel.AreasViewModel.UsersViewModel
{
    class AccountSettingsViewModel : SharedClass
    {

        Model.Areas.UsersClass UsersClass = new UsersClass();

        #region Properties
        public ICommand SaveCommand { get; set; }

        public ICommand BackCommand { get; set; }

        private string _passwordRepeat; 

        public string PasswordRepeat
        {
            get => this._passwordRepeat;
            set => Set<string>(ref _passwordRepeat, value);
        }

        private Model.Officer _officer;

        public Model.Officer Officer
        {
            get => this._officer;
            set => Set<Model.Officer>(ref _officer, value);
        }

        private Model.User _user; 

        public Model.User User
        {
            get => this._user;
            set => Set<Model.User>(ref _user, value);
        }

        public List<Model.Office> ListOfficies { get; set; }

        public List<Model.Position> ListPositions { get; set; }

        #endregion


        public AccountSettingsViewModel()
        {
            try
            {
                SaveCommand = new Command(SaveCommandClick);

                BackCommand = new Command(BackCommandClick);

                this.ListOfficies = UsersClass.GetListOffice();
                this.ListPositions = UsersClass.GetPositionsList();


                User = Model.Areas.UsersClass.AuthorizedUser;

                Officer = Model.Areas.UsersClass.Officer;

               
                
            }
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
                MessageBoxInformation("Данные успешно изменены");
                SetPage(new View.Areas.Users.MainMenu());
            }
            catch(Exception ex)
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
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }
    }
}
