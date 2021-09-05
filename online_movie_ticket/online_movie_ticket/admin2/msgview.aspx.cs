using BLL.manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_ticket.admin2
{
    public partial class msgview : System.Web.UI.Page
    {
        msgmanager msg = new msgmanager();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {


                MsgBind();
                //Lblimageshow.Visible = false;
                //Imgpic.Visible = false;
            }

        }


        public void MsgBind()
        {
            GridViewmsg.DataSource = msg.SellectAllMsg();
            GridViewmsg.DataBind();
        }

        protected void GridViewmsg_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewmsg.PageIndex = e.NewPageIndex;
            this.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            hfdmsg.Value = GridViewmsg.DataKeys[gvr.RowIndex].Value.ToString();
            MsgDelete();
        }
             
        
        private void MsgDelete()
        {
            msg.msgpro.id = int.Parse(  hfdmsg.Value);
            string result = msg.MsgDelete();

              hfdmsg.Value = "-1";

            if (result == "Success")
            {

                //Lblimageshow.Visible = false;
               Labelmsg.Visible = true;
                Labelmsg.Text = "Successfully Deleted";

            }
            else if (result == "Error")
            {
                Labelmsg.Visible = true;
              Labelmsg.Text = "failed due to some  error";
            }

            //else if (result == "Already exist")
            //{
            //    lblMsg.Visible = true;
            //    lblMsg.Text = "Already Exist";
            //}
            else
            {
                Labelmsg.Visible = true;
             Labelmsg.Text = "failed due to some technical error";
            }
           MsgBind();
        }
        }
    }
