using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlCommand sqlcmd;
    SqlConnection sqlcon;
    public string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection(@"Data Source=HAMMADPC\SQLEXPRESS;Initial Catalog=db_ManagementSystem;User ID=sa;Password=book");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["Number"] = TextBox1.Text;
       
        if (DropDownList1.SelectedItem.Text == "Employee")
        {
            sqlcon.Open();
            query = "SELECT COUNT(*) FROM tblEmployee WHERE Employee_Number='" + TextBox1.Text + "' AND [Password] ='" + TextBox2.Text + "'";
            sqlcmd = new SqlCommand(query, sqlcon);
            int a = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (a == 1)
            {
                Response.Redirect("EMPDETAILS.aspx");
            }
            else
            {
                Response.Write("INVALID");
            }
        }else if (DropDownList1.SelectedItem.Text == "ADMIN")
        {
            sqlcon.Open();
            query = "SELECT COUNT(*) FROM tblADMIN WHERE ID='" + TextBox1.Text + "' AND [Password] ='" + TextBox2.Text + "'";
            sqlcmd = new SqlCommand(query, sqlcon);
            int a = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (a == 1)
            {
                Response.Redirect("SYSADMI.aspx");
            }
            else
            {
                Response.Write("INVALID");
            }
        }
        else
        {
            Response.Write("Please Select User Type");
        }
        
        sqlcon.Close();
    }
}