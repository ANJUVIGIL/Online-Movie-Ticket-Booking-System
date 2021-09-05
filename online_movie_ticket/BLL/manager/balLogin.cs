using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL.manager
{
    public class balLogin
    {
       public dalLogin dallogin = new dalLogin();
        public int ballog(string id, string pass)
        {
            try
            {
                int a = dallogin.userlogin(id, pass);
                string b = dallogin.userlog(id, pass);
                if (a == 1 && (b=="Level1" || b=="Level2"))
                {
                    return 1;
                }
                else if (a == 1 && b == "admin")
                {
                    return 2;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ec)
            {
                ec.GetType();
            }
            return 0;
        }
        public string usertype(string user, string pass)
        {
            try
            {
                return dallogin.userlog(user, pass);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}