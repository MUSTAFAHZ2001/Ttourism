using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ttourism
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(" "))
                {
                    LinkButton1.Visible = true;// user login link button
                    LinkButton2.Visible = true; //sign up link button
                    LinkButton3.Visible = false; // logout button
                    LinkButton7.Visible = false;// hello user 
                    LinkButton4.Visible = true;// view trip

                    LinkButton6.Visible = true;// adminlogin
                    LinkButton5.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;// user login link button
                    LinkButton2.Visible = false; //sign up link button
                    LinkButton3.Visible = true; // logout button
                    LinkButton7.Visible = true;// hello user 
                    LinkButton4.Visible = true;
                    LinkButton7.Text = "Hello "  +  Session["username"].ToString();

                    LinkButton6.Visible = true;// adminlogin
                    LinkButton5.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;// user login link button
                    LinkButton2.Visible = false; //sign up link button
                    LinkButton3.Visible = true; // logout button
                    LinkButton7.Visible = true;// hello user 
                    LinkButton4.Visible = true;
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false;// adminlogin
                    LinkButton5.Visible = true;
                    LinkButton11.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                }

            }
            catch (Exception ex) { 
            }

        }
        
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-organisermanagement.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-marketingmanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("admintripinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("admintripissuing.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = " ";
            Session["fullname"] = " ";
            Session["role"] = " ";
            Session["status"] = " ";
            LinkButton1.Visible = true;// user login link button
            LinkButton2.Visible = true; //sign up link button
            LinkButton3.Visible = false; // logout button
            LinkButton7.Visible = false;// hello user 

            LinkButton6.Visible = true;// adminlogin
            LinkButton5.Visible = false;
            LinkButton11.Visible = false;
            LinkButton8.Visible = false;
            LinkButton9.Visible = false;
            LinkButton10.Visible = false;

            Response.Redirect("homepage.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
             Response.Redirect("userprofile.aspx");
        }
    }
}