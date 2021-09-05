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
    public class msgmanager
    {
        public msgproperty msgpro = new msgproperty();
        private SortedList S1 = new SortedList();

        private DBhelper Db_Obj = new DBhelper();
        public string msginsert()
        {
            S1.Clear();

            S1.Add("name", msgpro.name);
            S1.Add("email", msgpro.email);
            S1.Add("mob", msgpro.mob);
            S1.Add("msg", msgpro.msg);
            return Db_Obj.executeprocedure(S1, "msginserted");

        }


        public List<msgproperty> SellectAllMsg()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectregmsg");
            List<msgproperty> _list = new List<msgproperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new msgproperty
                {

                    id = Convert.ToInt32(dr["id"]),
                    name = dr["name"].ToString(),
                    email = dr["email"].ToString(),
                    mob = dr["mob"].ToString(),

                    msg = dr["msg"].ToString(),

                });
            }
            return _list;

        }

      
        public string MsgDelete()
        {
            S1.Clear();
            S1.Add("id", msgpro.id);
            return Db_Obj.executeprocedure(S1, "msg_delete");



        }

    }
}