using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Universalcarservice
{
    public partial class carservice : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button


                    LinkButton3.Visible = false;    //logout
                    LinkButton7.Visible = true;    //message
                    LinkButton4.Visible = false;  //service booking

                    LinkButton6.Visible = true;     //adminlogin
                    LinkButton11.Visible = false;    //membermanagement
                    LinkButton8.Visible = false;    //bookingmanagement
                    LinkButton12.Visible = false;    //sevices
                    LinkButton5.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;     //user login
                    LinkButton2.Visible = false;     //sign up

                    LinkButton3.Visible = true;    //logout
                    LinkButton7.Visible = true;    //message
                    LinkButton4.Visible = true;    //service booking                    
                    LinkButton7.Text = "Hello" + Session["username"].ToString();

                    LinkButton6.Visible = true;     //adminlogin
                    LinkButton11.Visible = false;    //membermanagement
                    LinkButton8.Visible = false;    //bookingmanagemen
                    LinkButton12.Visible = false;    //sevices
                    LinkButton5.Visible = false;

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;     //user login
                    LinkButton2.Visible = false;     //sign up

                    LinkButton3.Visible = true;    //logout
                    LinkButton7.Visible = true;    //message
                    LinkButton4.Visible = true;    //service booking
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = true;     //adminlogin
                    LinkButton11.Visible = true;    //membermanagement
                    LinkButton8.Visible = true;    //bookingmanagement
                    LinkButton12.Visible = true;
                    LinkButton5.Visible = true;

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarDetails.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignup.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLoginPage.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Member.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarAdmin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingAdmin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["fullname"] = null;
            Session["role"] = null;
            Session["status"] = null;

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button


            LinkButton3.Visible = false;    //logout
            LinkButton7.Visible = true;    //message
            LinkButton4.Visible = false;  //service booking

            LinkButton6.Visible = true;     //adminlogin
            LinkButton11.Visible = false;    //membermanagement
            LinkButton8.Visible = false;    //bookingmanagement
            LinkButton12.Visible = false;    //sevices
            LinkButton5.Visible = false;

            Response.Redirect("HomePage.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_feedback.aspx");
        }
    }
}