using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EmployeeDETAIL : System.Web.UI.Page
{
    SqlCommand sqlcmd;
    SqlConnection sqlcon;
    public string query;
    DataSet ds;
    SqlDataAdapter sqlad;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblNOTE.Visible = false;
            TRhide.Visible = false;
            TR1.Visible = false;
            TR2.Visible = false;
            TR3.Visible = false;
            TR4.Visible = false;
            TR5.Visible = false;
            TR6.Visible = false;
            TR7.Visible = false;
            TR8.Visible = false;
        }

        sqlcon = new SqlConnection(@"Data Source=HAMMADPC\SQLEXPRESS;Initial Catalog=db_ManagementSystem;User ID=sa;Password=book");
        EMPdeatil();
    }
    protected void EMPdeatil()
    {
        
        sqlcon.Open();
        query = "SELECT * FROM tblEmployee";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GRV.DataSource = ds;
        GRV.DataBind();
        sqlcon.Close();

    }


    protected void btnInsert_Click(object sender, EventArgs e)
    {
       
        TRhide.Visible = true;
        TR1.Visible = true;
        TR2.Visible = true;
        TR3.Visible = true;
        TR4.Visible = true;
        TR5.Visible = true;
        TR6.Visible = true;
        TR7.Visible = false;
        TR8.Visible = false;

    }

    protected void btnIN_Click(object sender, EventArgs e)
    {

        sqlcon.Open();
        query = "INSERT INTO tblEmployee VALUES(@a,@b,@c,@d,@e,@f)";
        sqlcmd = new SqlCommand(query,sqlcon);
        sqlcmd.Parameters.AddWithValue("@a",txtN.Text);
        sqlcmd.Parameters.AddWithValue("@b",Txt1.Text);
        sqlcmd.Parameters.AddWithValue("@c",Txt2.Text);
        sqlcmd.Parameters.AddWithValue("@d",Txt3.Text);
        sqlcmd.Parameters.AddWithValue("@e",Txt4.Text);
        sqlcmd.Parameters.AddWithValue("@f",Txt5.Text);
        sqlcmd.ExecuteNonQuery();
        sqlcon.Close();
        lblNOTE.Visible = true;
        lblNOTE.Text = "INSERT SUCCESSFULY";
        TRhide.Visible = false;
        TR1.Visible = false;
        TR2.Visible = false;
        TR3.Visible = false;
        TR4.Visible = false;
        TR5.Visible = false;
        TR6.Visible = false;
       
    }


    protected void btnDelete_Click(object sender, EventArgs e)
    {
        TRhide.Visible = true;
        TR8.Visible = true;
        TR7.Visible = false;
        TR6.Visible = false;

    }

    protected void btnD_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        query = "DELETE FROM [tblEmployee] WHERE Employee_Number='" + txtN.Text + "'";
        sqlcmd = new SqlCommand(query, sqlcon);
        sqlcmd.ExecuteNonQuery();
        sqlcon.Close();
        lblNOTE.Text = "DELETE SUCCESSFULY";
        lblNOTE.Visible = true;
        TRhide.Visible = false;
        TR8.Visible = false;
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        TRhide.Visible = true;
        TR1.Visible = true;
        TR2.Visible = true;
        TR3.Visible = true;
        TR4.Visible = true;
        TR5.Visible = true;
        TR6.Visible = false;
        TR7.Visible = true;
        TR8.Visible = false;
    }

    protected void btnUP_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        query = "UPDATE tblEmployee SET Employee_Name ='"+Txt1.Text+ "', Role ='" + Txt2.Text + "', Current_Project='" + Txt3.Text + "', Current_Department='" + Txt4.Text + "', Password='" + Txt5.Text + "' WHERE Employee_Number='" + txtN.Text + "'";
        sqlcmd = new SqlCommand(query, sqlcon);
        sqlcmd.ExecuteNonQuery();
        sqlcon.Close();
        lblNOTE.Text = "UPDATE SUCCESSFULY";
        lblNOTE.Visible = true;
        TRhide.Visible = false;
        TR1.Visible = false;
        TR2.Visible = false;
        TR3.Visible = false;
        TR4.Visible = false;
        TR5.Visible = false;
        TR7.Visible = false;
    }
}