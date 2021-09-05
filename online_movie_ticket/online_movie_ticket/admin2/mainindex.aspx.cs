using BLL;
using BLL.manager;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.admin2
{
    public partial class mainindex : System.Web.UI.Page
    {
     
  balRegister balregister = new balRegister();
        public property register = new property();
        //public DBhelper Db_Obj = new DBhelper();
        private SortedList S1 = new SortedList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                StudentBind();
                //Lblimageshow.Visible = false;
                //Imgpic.Visible = false;
            }

        }

        public void StudentBind()
        {
            GrdViewStudent.DataSource = balregister.SellectAllvisitor();
            GrdViewStudent.DataBind();
        }


        protected void rejectimg_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            hfdadmin.Value = GrdViewStudent.DataKeys[gvr.RowIndex].Value.ToString();
            balregister.register.id = int.Parse(hfdadmin.Value);
            string result = balregister.reject();
            hfdadmin.Value = "-1";
            StudentBind();
        }

        protected void acceptimg_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            hfdadmin.Value = GrdViewStudent.DataKeys[gvr.RowIndex].Value.ToString();
            balregister.register.id = int.Parse(hfdadmin.Value);
            string result = balregister.accept();
            hfdadmin.Value = "-1";
            StudentBind();
           
        }

      

        protected void GrdViewStudent_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GrdViewStudent.PageIndex = e.NewPageIndex;
            this.StudentBind();
        }
        
        }
    }
