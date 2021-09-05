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
    public class movieregister
    {
        private DBhelper Db_Obj = new DBhelper();
        public movieproperty moviepro = new movieproperty();

        private SortedList S1 = new SortedList();


        public object SelectAllMovies()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectregmovie");
            List<movieproperty> _list = new List<movieproperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new movieproperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    moviename = dr["moviename"].ToString(),
                    moviedesc = dr["moviedesc"].ToString(),
                    moviedirector = dr["moviedirector"].ToString(),

                    //rate=Convert.ToInt32(dr["rate"].ToString()),
                    //days = Convert.ToInt32(dr["days"].ToString()),
                    //nights = Convert.ToInt32(dr["nights"].ToString()),
                    movieimage = dr["movieimage"].ToString(),
                    status = dr["status"].ToString()




                });
            }

            return _list;
        }

        public void SelectmovieById()
        {
            S1.Clear();
            S1.Add("id", moviepro.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectmoviebyid");
            if (dt.Rows.Count > 0)
            {
                moviepro.moviename = dt.Rows[0].ItemArray[0].ToString();
                moviepro.moviedesc = dt.Rows[0].ItemArray[0].ToString();
                moviepro.moviedirector = dt.Rows[0].ItemArray[0].ToString();
                //moviepro.moviedesc = Convert.ToInt32(dt.Rows[0].ItemArray[1].ToString());
                //moviepro.movidirector = Convert.ToInt32(dt.Rows[0].ItemArray[2].ToString());
                //moviepro.nights = Convert.ToInt32(dt.Rows[0].ItemArray[3].ToString());
                moviepro.movieimage = dt.Rows[0].ItemArray[0].ToString();


                //Dispro_Obj.DistrictName = dt.Rows[0].ItemArray[0].ToString();
            }
        }
    }
}