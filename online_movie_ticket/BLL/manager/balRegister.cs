using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BLL.manager
{
    public class balRegister
    {
        public property register = new property();
        public DBhelper Db_Obj = new DBhelper();
        private SortedList S1 = new SortedList();

        public string StudentInsert()
        {
            S1.Clear();
            S1.Add("name", register.name);
            S1.Add("email", register.email);
            S1.Add("phone", register.phone);
            S1.Add("image", register.image);

            S1.Add("password", register.password);
            //S1.Add("rePassword", register.repassword);
            return Db_Obj.executeprocedure(S1, "visitor_insert");

        }


        public void SelectUserById()
        {
            S1.Clear();
            S1.Add("Id", register.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectuserbyid");
            if (dt.Rows.Count > 0)
            {
                register.name = dt.Rows[0].ItemArray[0].ToString();
             
                register.email = dt.Rows[0].ItemArray[1].ToString();
                register.phone = dt.Rows[0].ItemArray[2].ToString();
                register.image = dt.Rows[0].ItemArray[3].ToString();
                register.password = dt.Rows[0].ItemArray[4].ToString();


                //Dispro_Obj.DistrictName = dt.Rows[0].ItemArray[0].ToString();
            }
        }
        public string login()
        {
            S1.Clear();
            S1.Add("email", register.email);
            S1.Add("password", register.password);
            return Db_Obj.executeprocedure(S1, "login");
        }
        public List<property> SellectAllvisitor()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectregvisitor");
            List<property> _list = new List<property>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new property
                {

                    id = Convert.ToInt32(dr["id"]),
                    name = dr["name"].ToString(),
                    email = dr["email"].ToString(),
                    password = dr["Password"].ToString(),
                    phone = dr["phone"].ToString(),
                    image = dr["image"].ToString(),
                    Status=dr["Status"].ToString()

                });
            }
            return _list;
        }
        public string UserUpdate()
        {
            S1.Clear();
            S1.Add("id", register.id);
            S1.Add("name", register.name);
          
            S1.Add("email", register.email);
            S1.Add("phone", register.phone);
            S1.Add("image", register.image);
            S1.Add("password", register.password);


            return Db_Obj.executeprocedure(S1, "UserUpdate");

        }
        public string accept()
       
        {
            S1.Clear();
            S1.Add("id", register.id);
            return Db_Obj.executeprocedure(S1,"visitor_accept");
        }

        public string reject()
        {
            S1.Clear();
            S1.Add("id", register.id);
            return Db_Obj.executeprocedure(S1, "visitor_reject");
        }      



            }
       
        }
  