﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace GAI.ViewModel.HelperClass
{
    class ViewModelProp : INotifyPropertyChanged
    {

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanger([CallerMemberName]string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }

        protected void Set<T>(ref T field, T value, [CallerMemberName]string prop = "")
        {
            if (Equals(field, value)) return;
            field = value;
            OnPropertyChanger(prop);
        }

    }
}
