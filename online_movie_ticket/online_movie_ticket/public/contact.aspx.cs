using BLL.manager;
using BLL.propertys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket
{
	public partial class contact : System.Web.UI.Page
	{ 
        
        msgmanager msg=new msgmanager ();
    msgproperty msgpro = new msgproperty(); 
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        public void Button1_Click(object sender, EventArgs e)
        {
            msg.msgpro.name = txtname.Text.Trim().ToString();
            msg.msgpro.email = txtemail.Text.Trim().ToString();
            msg.msgpro.mob = txtmob.Text.Trim().ToString();
            msg.msgpro.msg = txtmsg.Text.Trim().ToString();
            string result = msg.msginsert();

            if (result == "Success")
            {
                Labelmsg.Visible = true;
                Labelmsg.Text = "Updated successfully";

            }

            else if (result == "Error")
            {
                Labelmsg.Visible = true;
                Labelmsg.Text = "failed due to error";

            }
        }


	}
}