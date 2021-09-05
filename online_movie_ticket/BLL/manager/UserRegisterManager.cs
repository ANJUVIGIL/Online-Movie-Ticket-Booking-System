using BLL.propertys;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BLL.manager
{
    public class UserRegisterManager
    {
        private DBhelper Db_Obj = new DBhelper();
        public UserRegisterProperty usr_pro = new UserRegisterProperty();

        private SortedList S1 = new SortedList();





        public void SelectUserById()
        {
            S1.Clear();
            S1.Add("Id", usr_pro.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectuserbyid");
            if (dt.Rows.Count > 0)
            {
                usr_pro.name = dt.Rows[0].ItemArray[0].ToString();
                
                usr_pro.email = dt.Rows[0].ItemArray[1].ToString();
               
                usr_pro.phone = dt.Rows[0].ItemArray[2].ToString();
                usr_pro.image = dt.Rows[0].ItemArray[3].ToString();
                usr_pro.password = dt.Rows[0].ItemArray[4].ToString();

                //Dispro_Obj.DistrictName = dt.Rows[0].ItemArray[0].ToString();
            }
        }

        public string UserUpdate()
        {
            S1.Clear();
            S1.Add("id", usr_pro.id);
            S1.Add("name", usr_pro.name);
           
            S1.Add("email", usr_pro.email);
            S1.Add("phone", usr_pro.phone);
            S1.Add("image", usr_pro.image);
            S1.Add("password", usr_pro.password);


            return Db_Obj.executeprocedure(S1, "UserUpdate");

        }
    }
}