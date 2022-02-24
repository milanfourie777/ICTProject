using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ICTProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //sign up link button

                    LinkButton3.Visible = false; //logout link button
                    LinkButton7.Visible = false; //hello user link button
                    LinkButton5.Visible = false; //ticket issue link button

                    LinkButton6.Visible = true; //admin login link button
                    LinkButton8.Visible = false; //view tickets link button
                    LinkButton10.Visible = false; //member management link button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton6.Visible = true; //admin login link button
                    LinkButton8.Visible = false; //view tickets link button
                    LinkButton10.Visible = false; //member management link button

                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello "+ Session["username"].ToString();
                    LinkButton5.Visible = true; //ticket issue link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton6.Visible = false; //admin login link button
                    LinkButton8.Visible = true; //view tickets link button
                    LinkButton10.Visible = true; //member management link button

                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello admin";
                    LinkButton5.Visible = false; //ticket issue link button
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }


        //logout
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("logticket.aspx");
        }

        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //sign up link button

            LinkButton3.Visible = false; //logout link button
            LinkButton7.Visible = false; //hello user link button
            LinkButton5.Visible = false; //ticket issue link button

            LinkButton6.Visible = true; //admin login link button
            LinkButton8.Visible = false; //view tickets link button
            LinkButton10.Visible = false; //member management link button
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewtickets.aspx");
        }
    }
}