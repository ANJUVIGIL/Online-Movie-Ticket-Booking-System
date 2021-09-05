using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL.propertys
{
    public class movieproperty
    {
        public string seatno;
        public int id { get; set; }
          public string   moviename{ get; set; }
          public string moviedesc { get; set; }
          public string moviedirector { get; set; }
          public string movieimage { get; set; }
          public string status { get; set; }
    }
}