using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.user
{
    public partial class movies : System.Web.UI.Page
    {
        adminRegister adminregister = new adminRegister();
        movieregister movie = new movieregister();
        int hidid;
        static int currentposition = 0;
        static int totalrows = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
            if (Page.IsPostBack == false)
            {
                Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetNoStore();

                moviebind();
            }
            }
            else
            {
                Response.Redirect("~/Public/signin.aspx");
            }

        }

        private void moviebind()
        {
            DataList1.DataSource = movie.SelectAllMovies();
            DataList1.DataBind();

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Label Lblid = (Label)e.Item.FindControl("LblId");
            Hiddenmovie.Value = Lblid.Text;
            hidid = Convert.ToInt32(Hiddenmovie.Value);
            Response.Redirect("~/user/userbooking.aspx?htlid=0&movieid=" + Hiddenmovie.Value);
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            if (
               currentposition == totalrows - 1)
            {
            }
            else
            {
                currentposition = currentposition + 1;

                DataBind();
            }
        }




        protected void Button3_Click(object sender, EventArgs e)
        {
            if (currentposition == 0)
            {
            }
            else
            {
                currentposition = currentposition - 1;
                DataBind();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            currentposition = totalrows - 1;
            DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            currentposition = 0;
            DataBind();
        }

    }
}