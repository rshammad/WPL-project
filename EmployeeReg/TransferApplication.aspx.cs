using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TransferApplication : System.Web.UI.Page
{
    SqlCommand sqlcmd;
    SqlConnection sqlcon;
    public string query;
    DataSet ds;
    SqlDataAdapter sqlad;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
   
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
            int appli = Convert.ToInt32(row.Cells[1].Text);
            if (status.Checked)
            {
                updaterow(appli, "A");
            }
            else
            {
                updaterow(appli, "N");

            }



        }
        lbl13.Text = "Applications Has Been Approved Successfully";
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        
    }
    private void updaterow(int appli, String approval)
    {
        String mycon = @"Data Source=HAMMADPC\SQLEXPRESS;Initial Catalog=db_ManagementSystem;User ID=sa;Password=book";
        String updatedata = "Update tblEmployeeMaster set Approved='" + approval + "' where Employee_number=" + appli;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}