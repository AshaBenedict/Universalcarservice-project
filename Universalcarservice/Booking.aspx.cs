using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Universalcarservice
{
    public partial class Booking : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void RenderDay(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
            if (e.Day.Date<DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Cell.Font.Strikeout = true;
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBookingIDExists())
            {

                Response.Write("<script>alert('Booking details Already Exist with this ID, try with correct ID');</script>");
            }
            else
            {
                BookingDetails();
            }
            
        }

        // user defined method
        bool checkBookingIDExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from booking_tbl where member_id='" + TextBox1.Text.Trim() + "';", con);
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
        void BookingDetails()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO booking_tbl(member_id,user_name,carnum,service_type,preference,discription,date,status) values(@member_id,@user_name,@carnum,@service_type,@preference,@discription,@date,@status)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@user_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@carnum", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@service_type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@preference", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@discription", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "pending");


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successful.GO TO Profile To Check YOUR UPDATES');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            TextBox6.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}