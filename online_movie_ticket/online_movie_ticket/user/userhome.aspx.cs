using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.user
{
    public partial class userhome : System.Web.UI.Page
    {
        balRegister balregister=new balRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetNoStore();

                Selectbyid();
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }
          private void Selectbyid()
        {


                   
                     balregister.register.id = Convert.ToInt32( Session.Contents["logid"]);
           balregister.SelectUserById();
            ImageMap1.ImageUrl =balregister.register.image;
            lblName.Text = balregister.register.name;
           
            lblEmail.Text = balregister.register.email;
            lblPhone.Text = balregister.register.phone;
           
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {


            Response.Redirect("editprofile.aspx");



        }

        }
    }

