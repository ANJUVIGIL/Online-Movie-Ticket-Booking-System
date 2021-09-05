using BLL.manager;
using BLL.propertys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.user
{
    public partial class thanks : System.Web.UI.Page
    {
        seatregister seatreg = new seatregister();

        movieregister movie = new movieregister();
        movieproperty moviepro = new movieproperty();

        //public movieproperty moviepro = new movieproperty();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (Page.IsPostBack == false)
                {

                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();


                    Hiddenseat.Value = Request.QueryString["seatid"];
                    selectseatbyid();


                    Hiddenmovie.Value = Request.QueryString["movieid"];
                    selectmoviebyid();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }

        private void selectmoviebyid()
        {
            movie.moviepro.id = Convert.ToInt32(Hiddenmovie.Value.ToString());
            movie.SelectmovieById();

            txtname.Text = movie.moviepro.moviename;
            txtmovie.Text = movie.moviepro.moviename;

        }

            private void selectseatbyid()
            {
                seatreg.seatpro.id = Convert.ToInt32(Hiddenseat.Value.ToString());
                seatreg.SelectseatById();

                seatname.Text = seatreg.seatpro.seatno;
               

            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                BookMovie();
                //seatfilling();
            }

            private void seatfilling()
            {
                //seatreg.seatpro.userid = Convert.ToInt32(Session.Contents["logid"]);
                //seatreg.seatpro.movieid = Convert.ToInt32(Hiddenmovie.Value);
                seatreg.seatpro.id = Convert.ToInt32(Hiddenseat.Value);
                //seatreg.seatpro.seatid = Convert.ToInt32(Hiddenseat.Value);



                string seatstatus = seatreg.seatfilled();
                if (seatstatus == "Success")
                {
                    Labelseat.Visible = true;
                    Labelseat.Text = "Booked successfully";

                    Clear();
                }
                else if (seatstatus == "already exist")
                {
                    Labelseat.Visible = true;
                    Labelseat.Text = "seat already filled please choose another one";

                }
                else if (seatstatus == "Error")
                {
                    Labelseat.Visible = true;
                    Labelseat.Text = "failed due to error";

                }
                else
                {
                    Labelseat.Visible = true;
                    Labelseat.Text = "alreaddy Registerd";
                }

            
            }

            private void  BookMovie()
            {

                seatreg.seatpro.userid = Convert.ToInt32(Session.Contents["logid"]);
                seatreg.seatpro.movieid = Convert.ToInt32(Hiddenmovie.Value);
                seatreg.seatpro.id = Convert.ToInt32(Hiddenseat.Value);
                seatreg.seatpro.seatid = Convert.ToInt32(Hiddenseat.Value);
                //bm.bkng_pro.Source = txtPlace.Text.Trim().ToString();

                
                string date = txtDatePicker.Text.ToString();
                DateTime Date = Convert.ToDateTime(date);

                //bm.bkng_pro.Date =Convert.ToDateTime( txtDatePicker.Text);

                seatreg.seatpro.Date = Date;
                //bm.bkng_pro.No_Person = Convert.ToInt32(DropDownList1.SelectedValue);
                //bm.bkng_pro.Room_type = DropDownList2.SelectedValue.ToString();



               

                string result = seatreg.BookingInsert();

                if (result == "Success")
                {
                    Labelthanks.Visible = true;
                    Labelthanks.Text = "Booked Sucessfully ";
                    Clear();
                }
                else if (result == "already exist")
                {
                    Labelthanks.Visible = true;
                    Labelthanks.Text = "seat already filled";

                }
                else if (result == "Error")
                {
                    Labelthanks.Visible = true;
                    Labelthanks.Text = "failed due to error";

                }
                else
                {
                    Labelthanks.Visible = true;
                    Labelthanks.Text = "alreaddy Registerd";
                }

            }

            protected void Calendar1_SelectionChanged(object sender, EventArgs e)
            {
                DateTime myDateTime;
                string myString = Calendar1.SelectedDate.ToString();
                myDateTime = Calendar1.SelectedDate;
                String myString_new = myDateTime.ToString("dd-MM-yyyy");
                txtDatePicker.Text = myString_new;
            }

            private void Clear()
            {
                txtDatePicker.Text = "";
                txtmovie.Text = "";
                seatname.Text = "";
               

            }

        }
    }
