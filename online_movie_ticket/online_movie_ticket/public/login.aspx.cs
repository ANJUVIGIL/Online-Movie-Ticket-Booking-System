using BLL;
using BLL.manager;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket
{
	public partial class login : System.Web.UI.Page
	{
        
        
      public  balRegister balregister = new balRegister();
        
		protected void Page_Load(object sender, EventArgs e)
		{

		}
       
        public void Studentinsert()
        {
            if (checkbox.Checked)
            {
                
                string filename = GetRandomText();
                string path = Server.MapPath("~/img/");
                Flupimage.SaveAs(path + filename + ".jpg");

                balregister.register.image = ("~/img/" + filename + ".jpg");
                
               balregister.register.name = txtname.Text.Trim().ToString();
                balregister.register.email = txtemail.Text.Trim().ToString();
                balregister.register.password = txtpassword.Text.Trim().ToString();
                //balregister.register.repassword = txtrepassword.Text.Trim().ToString();
                balregister.register.phone = txtphone.Text.Trim().ToString();
              
                string result = balregister.StudentInsert();
                txtname.Text = "";
                hfdregister.Value = "-1";
                if (result == "Success")
                {

                    message.Visible = true;
                    message.Text = "Inserted Successfully";
                    Clear();

                }
                else if (result == "Already Exist")
                {
                    message.Visible = true;
                    message.Text = "alreaddy Exist";

                }
                else if (result == "Error")
                {
                    message.Visible = true;
                    message.Text = "failed due to error";

                }
                else
                {
                    message.Visible = true;
                    message.Text = "failed due to some technical error";
                }
            }
     else
                {
                    message.Text = "please checked checkbox";
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


        protected void btnsignup_Click(object sender, EventArgs e)
        {
            if (hfdregister.Value == "-1")
            {
                Studentinsert();
            }
        }

     public void Clear()
        {
            txtname.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
            txtrepassword.Text = "";
        }

	}
}