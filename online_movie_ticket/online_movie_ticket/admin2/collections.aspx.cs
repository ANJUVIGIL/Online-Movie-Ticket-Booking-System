using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.admin2
{
    public partial class collections : System.Web.UI.Page
    {
       public adminRegister  adminregister=new adminRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                MovieBind();
                //Lblimageshow.Visible = false;
                //Imgpic.Visible = false;
            }

        }

        protected void save_Click(object sender, EventArgs e)
        {
            if (hfdmovi.Value == "-1")
            {
                movieinsert();
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

        public void movieinsert()
        {

            if (movieimage.HasFile == true)
            {
                string filename = GetRandomText();
                string path = Server.MapPath("~/img/");
                movieimage.SaveAs(path + filename + ".jpg");

                adminregister.adminobj.movieimage = ("~/img/" + filename + ".jpg");
                adminregister.adminobj.moviename = Txtmovie.Text.Trim().ToString();
                adminregister.adminobj.moviedesc = Txtdesc.Text.Trim().ToString();
                adminregister.adminobj.moviedirector = Txtdirector.Text.Trim().ToString();

                string result = adminregister.movieinsert();
                Txtmovie.Text = "";
                hfdmovi.Value = "-1";
                if (result == "Success")
                {

                    Lblmovie.Visible = true;
                    Lblmovie.Text = "Inserted Successfully";
                    Clear();

                }
                else if (result == "Already Exist")
                {
                    Lblmovie.Visible = true;
                    Lblmovie.Text = "alreaddy Exist";

                }
                else if (result == "Error")
                {
                    Lblmovie.Visible = true;
                    Lblmovie.Text = "failed due to error";

                }
                else
                {
                    Lblmovie.Visible = true;
                    Lblmovie.Text = "failed due to some technical error";
                }
                //MovieBind();
            }
        }


             public void Clear()
        {
            Txtmovie.Text = "";
            Txtdesc.Text = "";
            Txtdirector.Text = "";
           
        
        }





             public void MovieBind()
             {
                 GrdViewmovie.DataSource = adminregister.SellectAllMovie();
                 GrdViewmovie.DataBind();
             }

             protected void GrdViewmovie_PageIndexChanging(object sender, GridViewPageEventArgs e)
             {
                 GrdViewmovie.PageIndex = e.NewPageIndex;
                 this.MovieBind();
             }
            
    }
}