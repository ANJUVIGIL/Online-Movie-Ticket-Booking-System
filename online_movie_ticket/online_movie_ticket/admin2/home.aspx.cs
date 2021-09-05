using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.admin2
{
    public partial class home : System.Web.UI.Page
    {
        UserRegisterManager urm = new UserRegisterManager();
       
        protected void Page_Load(object sender, EventArgs e)
        { if (Session["logid"] != null)
            {
            if (!Page.IsPostBack)
            {



                Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetNoStore();

                urm.usr_pro.id = Convert.ToInt32(Session.Contents["logid"]);
                urm.SelectUserById();
                txtname.Text = urm.usr_pro.name;
               
                txtemail.Text = urm.usr_pro.email;
                txtphone.Text = urm.usr_pro.phone;
                txtpassword.Text = urm.usr_pro.password;
               imagemappic.ImageUrl = urm.usr_pro.image;
            }
            }
             else
             {
                 Response.Redirect("~/Public/login.aspx");
             }
        }

        

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            urm.usr_pro.name = txtname.Text.Trim().ToString();

            urm.usr_pro.email = txtemail.Text.Trim().ToString();

            string filename = GetRandomText();
            string path = Server.MapPath("~/img/");
            flupImg.SaveAs(path + filename + ".jpg");
            urm.usr_pro.image = ("~/img/" + filename + ".jpg");


            urm.usr_pro.phone = txtphone.Text.Trim().ToString();
            urm.usr_pro.password = txtpassword.Text.Trim().ToString();


            string result = urm.UserUpdate();

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
        