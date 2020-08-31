using GAI.BackEnd;
using GAI.Model.Areas;
using GAI.View.Areas.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace GAI.ViewModel.AreasViewModel.UsersViewModel
{
    class MainWindowViewModel : SharedClass
    {

        //have this.Close() method
        public static Action CloseWindow { get; set; }

        private string _title;

        private Page _currentPage;

        private string _nameOfficer;

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
