using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.admin2
{
    public partial class viewbooking : System.Web.UI.Page
    {
        seatregister seatreg = new seatregister();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                BindGrid();
            }
              }
        private void BindGrid()
        {
            GrdViewbooking.DataSource = seatreg.SelectAllBookings();
            GrdViewbooking.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GrdViewbooking.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}