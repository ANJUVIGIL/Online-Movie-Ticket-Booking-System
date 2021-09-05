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

    public class seatregister
    {
        private DBhelper Db_Obj = new DBhelper();
        public seatproperty seatpro = new seatproperty();
        private SortedList S1 = new SortedList();
        //static int seatbookno = -1;


        public object SelectAllMovies()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectregseat");
            List<seatproperty> _list = new List<seatproperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new seatproperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    seatno = dr["seatno"].ToString(),

                    status = dr["status"].ToString()




                });
            }

            return _list;
        }




        public object SelectAllBookings()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectallbookings");
            List<seatproperty> _list = new List<seatproperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new seatproperty
                {
                    bookingid = Convert.ToInt32(dr["bookingid"]),
                    name = dr["name"].ToString(),
                    moviename = dr["moviename"].ToString(),
                    seatno = dr["seatno"].ToString(),
                    Date = Convert.ToDateTime(dr["Date"])

                

                   
                });
            }

            return _list;
        }


        public string BookingInsert()
        {
            S1.Clear();

            S1.Add("userid", seatpro.userid);
            S1.Add("movieid", seatpro.movieid);
            S1.Add("seatid", seatpro.seatid);
           
            S1.Add("Date", seatpro.Date);

            return Db_Obj.executeprocedure(S1, "BookingInsert");

        }

        public string seatfilled()
        {
            S1.Clear();
            //S1.Add("userid", seatpro.userid);
            //S1.Add("movieid", seatpro.movieid);

            S1.Add("id", seatpro.id);

            return Db_Obj.executeprocedure(S1, "seatfille");

        }



        public void SelectseatById()
        {
            S1.Clear();
            S1.Add("id", seatpro.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectseatbyid");
            if (dt.Rows.Count > 0)
            {
                seatpro.seatno = dt.Rows[0].ItemArray[0].ToString();
                seatpro.status = dt.Rows[0].ItemArray[0].ToString();

            }
            //    if (dt.Rows.Count > i)
            //    {
            //        seatpro.seatno = dt.Rows[0].ItemArray[0].ToString();
            //        seatpro.status = dt.Rows[0].ItemArray[0].ToString();
            //moviepro.nights = Convert.ToInt32(dt.Rows[0].ItemArray[3].ToString());


            //if (seatpro.status == "A")
            //{
            //    if (i == 0 && seatbookno - 1 != i)
            //    {
            //        seatpro.Button1.BackColour = System.Drawing.Color.Gray;
            //    }
            //    if (i == 1 && seatbookno - 1 != i)
            //    {
            //        seatpro.Button2.BackColour = System.Drawing.Color.Gray;
            //    }
            //    if (i == 2 && seatbookno - 1 != i)
            //    {
            //        Button2.BackColour = System.Drawing.Color.Gray;
            //    }
            //    if (i == 3 && seatbookno - 1 != i)
            //    {
            //        Button3.BackColour = System.Drawing.Color.Gray;
            //    }
            //}
            //if (seatpro.status == "B")
            //{
            //    if (i == 0 && seatbookno - 1 != i)
            //    {
            //        Button1.BackColour = System.Drawing.Color.Red;
            //    }
            //    if (i == 1 && seatbookno - 1 != i)
            //    {
            //        Button2.BackColour = System.Drawing.Color.Red;
            //    }
            //    if (i == 2 && seatbookno - 1 != i)
            //    {
            //        Button2.BackColour = System.Drawing.Color.Red;
            //    }
            //    if (i == 3 && seatbookno - 1 != i)
            //    {
            //        Button3.BackColour = System.Drawing.Color.Red;
            //    }
            //}
        }
    }
}
    
