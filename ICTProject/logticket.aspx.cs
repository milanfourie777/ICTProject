using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ICTProject
{
    public partial class logticket : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            logNewTicket();
        }

        void logNewTicket()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO ticket_master(member_id,date,subject,problem,details) values(@member_id,@date,@subject,@problem,@details)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@subject", TextBox2.Text.Trim());                  
                cmd.Parameters.AddWithValue("@problem", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@details", TextBox5.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Ticket Logged successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}