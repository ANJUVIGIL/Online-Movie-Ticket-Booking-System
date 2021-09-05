using BLL.manager;
using BLL.propertys;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.user
{
    public partial class userbooking : System.Web.UI.Page
    {
        movieregister movie = new movieregister();
        
        seatregister seatreg = new seatregister();
        int Hidseat;
        
        //static int seatbookno = -1;
        public movieproperty moviepro = new movieproperty();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (Page.IsPostBack == false)
                {

                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    Hiddenmovie.Value = Request.QueryString["movieid"];
                    selectmoviebyid();

                    //Hiddenseat.Value = Request.QueryString["seatid"];
                    //selectseatbyid();
                    moviebind();
                }

            }

            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }
        private void moviebind()
        {
            DataList1.DataSource = seatreg.SelectAllMovies();
            DataList1.DataBind();

        }

       
        //private void selectseatbyid()
        //{
        //    seatreg.seatpro.id = Convert.ToInt32(Hiddenseat.Value.ToString());
        //    seatreg.SelectseatById();

        //    seatname.Text = seatreg.seatpro.seatno;


        //}


        private void selectmoviebyid()
        {
            movie.moviepro.id = Convert.ToInt32(Hiddenmovie.Value.ToString());
            movie.SelectmovieById();

            txtname.Text = movie.moviepro.moviename;

        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            Label label= e.Item.FindControl("Label1") as Label;



            if (label.Text.Trim().ToLower()== "A3")
            {
                e.Item.BackColor = System.Drawing.Color.Red;
            }


            int index = Convert.ToInt32(e.Item.ItemIndex);
            Label seatid = (Label)e.Item.FindControl("seatid");
            Hiddenseat.Value = seatid.Text;
            Hidseat = Convert.ToInt32(Hiddenseat.Value);
            Response.Redirect("~/user/thanks.aspx?htlid=0&seatid=" + Hiddenseat.Value + "&movieid=" + Hiddenmovie.Value);
       
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    seatreg.selectseat();
        //}

    }
}