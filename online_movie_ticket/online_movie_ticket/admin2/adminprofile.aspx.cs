using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.admin2
{
    public partial class adminprofile : System.Web.UI.Page
    { 
        UserRegisterManager urm = new UserRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
             
                
                if (Page.IsPostBack == false)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    SelectById();
                }
            }
            else
            {
              
                Response.Redirect("~/Public/login.aspx");
            }

           

        }

        private void SelectById()
        {
            if (Session["logid"] != null)
            {

                urm.usr_pro.id = Convert.ToInt32(Session.Contents["logid"]);
                urm.SelectUserById();
                txtname.Text = urm.usr_pro.name;
                
                txtemail.Text = urm.usr_pro.email;
                txtphone.Text = urm.usr_pro.phone;
                txtpassword.Text = urm.usr_pro.password;
                
               imagemappic.ImageUrl = urm.usr_pro.image;
            }
            else
            {
                Response.Redirect("~/Public/signin.aspx");
            }
        }




        }
    }
