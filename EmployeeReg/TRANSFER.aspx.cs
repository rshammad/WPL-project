using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlCommand sqlcmd;
    SqlConnection sqlcon;
    public string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtAllo.Visible = false;
        sqlcon = new SqlConnection(@"Data Source=HAMMADPC\SQLEXPRESS;Initial Catalog=db_ManagementSystem;User ID=sa;Password=book");

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        sqlcon.Open();
        query = "INSERT INTO [tblEmployeeMAster] VALUES(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n)";
        sqlcmd = new SqlCommand(query, sqlcon);
        sqlcmd.Parameters.AddWithValue("@a",TextBox1.Text);
        sqlcmd.Parameters.AddWithValue("@b",TextBox2.Text);
        sqlcmd.Parameters.AddWithValue("@c", TextBox3.Text);
        sqlcmd.Parameters.AddWithValue("@d", TextBox4.Text);
        sqlcmd.Parameters.AddWithValue("@e", TextBox5.Text);
        sqlcmd.Parameters.AddWithValue("@f", TextBox6.Text);
        sqlcmd.Parameters.AddWithValue("@g", TextBox7.Text);
        sqlcmd.Parameters.AddWithValue("@h", TextBox8.Text);
        sqlcmd.Parameters.AddWithValue("@i", TextBox9.Text);
        sqlcmd.Parameters.AddWithValue("@j", TextBox10.Text);
        sqlcmd.Parameters.AddWithValue("@k", TextBox11.Text);
        sqlcmd.Parameters.AddWithValue("@l", TextBox12.Text);
        sqlcmd.Parameters.AddWithValue("@m", TextBox13.Text);
        sqlcmd.Parameters.AddWithValue("@n", 'N');
        sqlcmd.ExecuteNonQuery();
        sqlcon.Close();
        //Response.Write("<script>alert('Submit Successfuly')</script>");
        Response.Redirect("EMPDETAILS.aspx");
    }

    protected void DDLp_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtAllo.Visible = true;
        if (DDLp.SelectedItem.Text=="HR") 
        {
            txtAllo.Text = "Your Total Allowance is $2300";
        }else if (DDLp.SelectedItem.Text == "Employee")
        {
            txtAllo.Text = "Your Total Allowances is $1000";
        }
        else if (DDLp.SelectedItem.Text == "Manager")
        {
            txtAllo.Text = "Your Total Allowances is $3000";
        }
    }
}