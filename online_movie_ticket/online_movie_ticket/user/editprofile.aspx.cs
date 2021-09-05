using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.user
{
    public partial class editprofile : System.Web.UI.Page
    {
        balRegister balregister=new balRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    ProfileBind();

                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }
        private void ProfileBind()
        {
           balregister.register.id = Convert.ToInt32(Session.Contents["logid"]);
           balregister.SelectUserById();
            txtName.Text =   balregister.register.name;
       
            txtEmail.Text =   balregister.register.email;
            txtPhone.Text =   balregister.register.phone;
            txtPass.Text =   balregister.register.password;
            imgMapProfile.ImageUrl =   balregister.register.image;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
  balregister.register.id = Convert.ToInt32(Session.Contents["logid"]);
             balregister.register.name = txtName.Text.Trim().ToString();
         
            balregister.register.email = txtEmail.Text.Trim().ToString();

            string filename = GetRandomText();
            string path = Server.MapPath("~/img/");
            flupImg.SaveAs(path + filename + ".jpg");
          balregister.register.image = ("~/img/" + filename + ".jpg");


           balregister.register.phone = txtPhone.Text.Trim().ToString();
           balregister.register.password = txtPass.Text.Trim().ToString();


            string result = balregister.UserUpdate();

            if (result == "Success")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Updated successfully";

            }

            else if (result == "Error")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "failed due to error";

            }



        }

        private string GetRandomText()
        {

            string randomText = "";
            string alphabets = "0123456789";

            Random r = new Random();
            for (int j = 0; j <= 3; j++)
            {
                randomText += alphabets[r.Next(alphabets.Length)];
            }
            return randomText.ToString();


        }
    }
        }
    
