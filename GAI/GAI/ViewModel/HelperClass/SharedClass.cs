using GAI.ViewModel.HelperClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace GAI.BackEnd
{
    public delegate void SetPageDelegate(Page page);


    class SharedClass : ViewModelProp
    {
        public static SetPageDelegate setPage { get; set; }

        public static SetPageDelegate setPageSecondPage { get; set; }

        public static void SetPage(Page page)
        {
            setPage?.Invoke(page);
        }

        public static void SetPageSecondPage(Page page)
        {
            setPageSecondPage?.Invoke(page);
        }

        protected void OpenNewWindowAndCloseThis(Action closeWindow, Window openWindow)
        {
            openWindow.Show();
            closeWindow(); 
        }

        public static void MessageBoxErrorStatic(Exception ex)
        {
            MessageBox.Show(ex.Message, ex.HelpLink, MessageBoxButton.OK, MessageBoxImage.Error);
        }


        protected void MessageBoxError(Exception ex)
        {
            MessageBox.Show(ex.Message, ex.HelpLink, MessageBoxButton.OK, MessageBoxImage.Error);
        }


        protected void MessageBoxError(string message, string title = "Ошибка")
        {
            MessageBox.Show(message, title, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        protected void MessageBoxWarning(string message, string title = "Проверьте данные")
        {
            MessageBox.Show(message, title, MessageBoxButton.OK, MessageBoxImage.Warning);
        }

        protected void MessageBoxInformation(string message, string title = "Успешно")
        {
            MessageBox.Show(message, title, MessageBoxButton.OK, MessageBoxImage.Information);
        }

        protected MessageBoxResult MessageBoxQuestion(string message, string title = "Вопрос")
        {
            MessageBoxResult result = MessageBox.Show(message, title, MessageBoxButton.YesNo, MessageBoxImage.Question);
            return result;
        }
    }
}
