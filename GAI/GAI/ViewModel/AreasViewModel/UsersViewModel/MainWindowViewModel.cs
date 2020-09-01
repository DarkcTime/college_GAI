using GAI.BackEnd;
using GAI.Model.Areas;
using GAI.View.Areas.Users;
using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace GAI.ViewModel.AreasViewModel.UsersViewModel
{
    class MainWindowViewModel : SharedClass
    {

        //have this.Close() method
        public static Action CloseWindow { get; set; }

        private string _title;

        private Page _currentPage;

        private string _nameOfficer;

        public ICommand SettingsAccountCommand { get; set; }

        public ICommand ExitCommand { get; set; }

        public string Title
        {
            get => this._title;
            set => Set<string>(ref _title, value); 
        }

        public Page CurrentPage
        {
            get => this._currentPage;
            set => Set<Page>(ref _currentPage, value); 
        }

        public string NameOfficer
        {
            get => this._nameOfficer;
            set => Set<string>(ref _nameOfficer, value);
        }



        public MainWindowViewModel()
        {
            try
            {
                //load open new Page
                setPage = SetPages;

                SetPage(new MainMenu());

                NameOfficer = $"{UsersClass.Officer.FirstName} {UsersClass.Officer.LastName}";

                this.SettingsAccountCommand = new Command(SettingsAccountCommandClick);

                this.ExitCommand = new Command(ExitCommandClick);

            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        

        private void SettingsAccountCommandClick(object obj)
        {
            try
            {
                SetPage(new View.Areas.Users.AccountSettings());
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        private void ExitCommandClick(object obj)
        {
            try
            {
                OpenNewWindowAndCloseThis(CloseWindow, new View.Areas.Users.Auth()) ;
            }
            catch(Exception ex)
            {
                MessageBoxError(ex);
            }
        }

        //set page in MainWindow
        private void SetPages(Page page)
        {
            try
            {
                CurrentPage = page;
                Title = page.Title;
            }
            catch (Exception ex)
            {
                this.MessageBoxError(ex);
            }

        }
    }
}
