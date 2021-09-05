using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket
{
	public partial class signin : System.Web.UI.Page
	{
        balRegister balregister = new balRegister();
		
        protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnlogin_Click(object sender, EventArgs e)
        {
           login();
	}


    private void login()
    {
        balregister.register.email=txtemail.Text.Trim().ToString();
        balregister.register.password=txtpassword.Text.Trim().ToString();
        string result=balregister.login();
        string[] arr=result.Split(',');
        string res=arr[0];

    if (res == "Success")
    {
        int id = Convert.ToInt32(arr[1]);
        string role = arr[2];
        msgsignin.Text = "logged successfully";
        if (role == "admin")
        {
            Session.Add("logid", id);
            Response.Redirect("~/admin2/adminprofile.aspx");
        }
        else if (role == "users")
        {
            Session.Add("logid", id);
            Response.Redirect("~/user/movies.aspx");
        }

    }
    else
    {
        msgsignin.Text = "Invalid User";
    }

}
    }
}