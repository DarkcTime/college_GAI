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
    class AuthViewModel : SharedClass
    {
        //have this.Close() method
        public static Action CloseWindow { get; set; }

        Model.Areas.UsersClass UsersClass = new Model.Areas.UsersClass();

        private Model.User _user; 

        public Model.User User
        {
            get => this._user;
            set => Set<Model.User>(ref _user, value); 
        }

        public ICommand SingInCommand { get; set; }
        public ICommand CancelCommand { get; set; }


        public AuthViewModel()
        {
            try
            {
                new SharedModel();
                User = new Model.User();
                this.SingInCommand = new Command(SingInCommandClick);
                this.CancelCommand = new Command(CancelCommandClick);
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }

        }

        private void CancelCommandClick(object obj)
        {
            try
            {
                CloseWindow();
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        //
        private void SingInCommandClick(object obj)
        {
            try
            {
                if (!CheckFields(User)) {
                    if (UsersClass.AuthUser(User)) OpenNewWindowAndCloseThis(CloseWindow, new View.Areas.Users.MainWindow());
                    else MessageBoxWarning("Неправильный логин или пароль");
                }
                else MessageBoxWarning("Все поля должны быть заполнены");
            }
            catch (Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        private bool CheckFields(Model.User _user)
        {
            return String.IsNullOrWhiteSpace(_user.Email) || String.IsNullOrWhiteSpace(_user.Password); 
        }


    }
}
