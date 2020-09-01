using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GAI.Model.Areas
{
    class DriverClass : SharedModel
    {

        public List<Model.Driver> GetDrivers()
        {
            return context.Drivers.ToList();
        }

        public List<Model.Region> GetRegions()
        {
            return context.Regions.ToList();
        }

        public List<Model.Gender> GetGenders()
        {
            //context.Drivers.First().
            return context.Genders.ToList();
            
        }

    }
}
