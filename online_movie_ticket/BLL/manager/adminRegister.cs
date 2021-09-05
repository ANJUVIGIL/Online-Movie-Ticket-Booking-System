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
    public class adminRegister
    {
        public adminproperty adminobj = new adminproperty();
        private DBhelper Db_Obj = new DBhelper();

        private SortedList S1 = new SortedList();


        public string movieinsert()
        {
            S1.Clear();
            S1.Add("moviename", adminobj.moviename);
            S1.Add("moviedesc", adminobj.moviedesc);
            S1.Add("moviedirector", adminobj.moviedirector);

            S1.Add("movieimage", adminobj.movieimage);

            return Db_Obj.executeprocedure(S1, "movie_insert");
        }



        public List<adminproperty> SellectAllMovie()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectregmovie");
            List<adminproperty> _list = new List<adminproperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new adminproperty
                {

                    id = Convert.ToInt32(dr["id"]),
                    moviename = dr["moviename"].ToString(),
                    moviedesc = dr["moviedesc"].ToString(),
                    moviedirector = dr["moviedirector"].ToString(),
                   
                    movieimage = dr["movieimage"].ToString(),
                    status = dr["status"].ToString()

                });
            }
            return _list;
        }

    }
}