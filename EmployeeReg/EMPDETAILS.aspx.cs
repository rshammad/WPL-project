using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    SqlCommand sqlcmd;
    SqlConnection sqlcon;
    public string query;
    DataSet ds;
    SqlDataAdapter sqlad;
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection(@"Data Source=HAMMADPC\SQLEXPRESS;Initial Catalog=db_ManagementSystem;User ID=sa;Password=book");
        FILLGrid();
    }
    protected void FILLGrid()
    {
        int F = Convert.ToInt32(Session["Number"]);
        sqlcon.Open();
        query = "SELECT * FROM tblEmployee WHERE Employee_Number='" + F + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
        sqlcon.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("TRANSFER.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

       
    }

    protected void btnCH_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.axps");
    }
}