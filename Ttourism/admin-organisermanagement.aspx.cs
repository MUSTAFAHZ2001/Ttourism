using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ttourism
{
    public partial class admin_organisermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            
        }
        //add button-button2
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfOrganiserExists())
            {
                Response.Write("<script>alert('ORGANISER WITH THIS ID ALREAY EXISTS.YOU CANNOT ADD ANOTHER AUTHOR WITH THE SAME ID'); </script> ");
            }
            else
            {
                addNewOrganiser();
            }
        }

        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfOrganiserExists())
            {
                updateOrganiser();
            }
            else
            {
                
                Response.Write("<script>alert('ORGANISER DOES NOT EXISTS.'); </script> ");

            }
        }
        // delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfOrganiserExists())
            {
                deleteOrganiser();
            }
            else
            {

                Response.Write("<script>alert('ORGANISER DOES NOT EXISTS.'); </script> ");

            }

        }
        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {

            getOrganiserbyID();
        }
        //user defined functions
        bool checkIfOrganiserExists()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT *from organiser_table where organiser_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script> ");
                return false;
            }
        }
        
        void addNewOrganiser()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO organiser_table  (organiser_id,organiser_name ) values(@organiser_id,@organiser_name)  ", con);

                cmd.Parameters.AddWithValue("@organiser_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@organiser_name", TextBox2.Text.Trim());
         
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('ORGANISER  ADDED SUCCESSFULLY');</script>");
                clearform();
                GridView1.DataBind(); 
               

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script> ");

            }
        }

        // user defined functions
        void updateOrganiser()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE organiser_table  SET organiser_name=@organiser_name WHERE organiser_id='"+TextBox1.Text.Trim()+"' ", con);

                
                cmd.Parameters.AddWithValue("@organiser_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('ORGANISER  UPDATED SUCCESSFULLY');</script>");
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script> ");

            }
        }
        //user-defined function
        void deleteOrganiser()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE  from organiser_table WHERE organiser_id='" + TextBox1.Text.Trim() + "' ", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('ORGANISER  DELETED SUCCESSFULLY');</script>");
                clearform();
                GridView1.DataBind();
                   
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script> ");

            }
        }
        // user-defined function

        void clearform()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        void getOrganiserbyID()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT *from organiser_table where organiser_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = (string)dt.Rows[0][1];
                }
                else
                {
                    Response.Write("<script>alert('INVALID ORGANISER ID')</script>");
                    
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script> ");
                
            }
        }

    }
}