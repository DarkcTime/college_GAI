using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GAI.Model.Areas
{
    class UsersClass : SharedModel
    {
        public static Model.User AuthorizedUser { get; private set; }

        public static Model.Officer Officer { get; private set; }

        public bool AuthUser(Model.User _user)
        {
            var user = context.Users.Where(i => _user.Email == i.Email && _user.Password == i.Password);

            if (user.Count() > 0)
            {
                AuthorizedUser = user.FirstOrDefault();
                Officer = context.Officers.Where(i => AuthorizedUser.IdUser == i.IdOfficer).FirstOrDefault(); 
                return true;
            }

            return false;

        }




    }
}
