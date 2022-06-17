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
    public partial class admintripissuing : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }



        //goooo
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        //confirm
        protected void Button2_Click(object sender, EventArgs e)
        {
            confirm();
        }




        //user defined 2

        void confirm()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO booking-confirmation  (member_id,member_name,trip_id,trip_name,start_date,end_date ) values(@member_id,@member_name,@trip_id,@trip_name,@start_date,@end_date)  ", con);

                //cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                // cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@trip_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@trip_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@start_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@end_date", TextBox6.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('BOOKING CONFIRMED SUCCESSFULLY');</script>");
               
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('BOOKING CONFIRMED SUCCESSFULLY '); </script> ");

            }
        }


        /////////////////////////////////////////////////////
        ///

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
        ////////////////////////////////////////////
        ///








    }
}