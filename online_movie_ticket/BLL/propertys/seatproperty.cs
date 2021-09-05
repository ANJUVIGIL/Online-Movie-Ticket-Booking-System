using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL.propertys
{
    public class seatproperty
    {
        public int bookingid { get; set; }
        public int userid { get; set; }
        public int movieid { get; set; }
        public int seatid { get; set; }
        public int id { get; set; }
        public string seatno { get; set; }
        public string status { get; set; }
        public DateTime Date { get; set; }
        public string name { get; set; }
        public string moviename { get; set; }
       
    }
}