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
    public partial class admintripinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            fillOrganiserPublisherValues();
        }


       

        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfTripExists())
            {
                Response.Write("<script>alert('Trip Already Exists, try some other Trip ID');</script>");
            }
            else
            {
                addNewTrip();
            }
        }

        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateBookByID();
        }
        //delete
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteTripByID();
        }
        //go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getBookByID();
        }



        //userdefined functions
        void fillOrganiserPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT organiser_name from organiser_table;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "organiser_name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("SELECT publisher_name from publisher_table;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_name";
                DropDownList2.DataBind();

            }
            catch (Exception ex)
            {

            }
        }
        // check trip exists
        bool checkIfTripExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tripinventory where trip_id='" + TextBox1.Text.Trim() + "' OR trip_name='" + TextBox2.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void addNewTrip()
        {
            try
            {
                
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tripinventory(trip_id,trip_name,guide_lan,trip_cost,organiser_name,publisher_name,publisher_date) values(@trip_id,@trip_name,@guide_lan,@trip_cost,@organiser_name,@publisher_name,@publisher_date)", con);

                cmd.Parameters.AddWithValue("@trip_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@trip_name", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@organiser_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@guide_lan", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@trip_cost", TextBox10.Text.Trim());
                //cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
              
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Trip added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tripinventory WHERE trip_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["trip_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["publisher_date"].ToString();
                    
                    TextBox10.Text = dt.Rows[0]["trip_cost"].ToString().Trim();
                    
                    DropDownList1.SelectedValue = dt.Rows[0]["guide_lan"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["organiser _name"].ToString().Trim();

                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }
        void deleteTripByID()
        {
            if (checkIfTripExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from tripinventory WHERE trip_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Trip Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Trip ID');</script>");
            }
        }




        //user defined function
        void updateBookByID()
        {

            if (checkIfTripExists())
            {
                try
                {

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE tripinventory set trip_name=@trip_name,organiser_name=@organiser_name, publisher_name=@publisher_name, publisher_date=@publisher_date,guide_lan=@guide_lan,trip_cost=@trip_cost where trip_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@trip_name", TextBox2.Text.Trim());
     
                    cmd.Parameters.AddWithValue("@organiser_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publisher_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@guide_lan", DropDownList1.SelectedItem.Value);
                    
                    cmd.Parameters.AddWithValue("@trip_cost", TextBox10.Text.Trim());
                    
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Trip Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Trip ID');</script>");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        // user defined function














    }
}