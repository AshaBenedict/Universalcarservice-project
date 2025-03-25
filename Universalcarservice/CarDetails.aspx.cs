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
    public partial class CarDetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkCarNumExists())
            {

                Response.Write("<script>alert('Car Number Already Exist with this Number, try with correct Number');</script>");
            }
            else
            {
                CarDetail();
            }

        }
        bool checkCarNumExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from car_tbl where carnum='" + TextBox1.Text.Trim() + "';", con);
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
        void CarDetail()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO car_tbl(carnum,carmodel,caryear,carcolour,license) values(@carnum,@carmodel,@caryear,@carcolour,@license)", con);
                cmd.Parameters.AddWithValue("@carnum", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@carmodel", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@caryear", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@carcolour", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@license", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successful. Proceed to book your service');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}