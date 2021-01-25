using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class SYSADMI : System.Web.UI.Page
{
    SqlCommand sqlcmd;
    SqlConnection sqlcon;
    public string query;
    DataSet ds;
    SqlDataAdapter sqlad;
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
        sqlcon = new SqlConnection(@"Data Source=HAMMADPC\SQLEXPRESS;Initial Catalog=db_ManagementSystem;User ID=sa;Password=book");
        //FILLGrid();
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {

        Button1.Visible = true;
        if (DropDownList1.SelectedItem.Text=="Employee_Number")
        {
            SHOWDATA();
           
        }
        else if (DropDownList1.SelectedItem.Text=="Name") {
            BYname();
           
        }
        else if (DropDownList1.SelectedItem.Text =="From_Location") 
        { 
            fromloc();
            
        }
        else if (DropDownList1.SelectedItem.Text == "To_Location") 
        { 
            toloc();
            
        }
        else if (DropDownList1.SelectedItem.Text == "From_Project") 
        { 
            frompro(); }
        else if (DropDownList1.SelectedItem.Text == "To_Project") 
        { 
            topro();
           
        }
        else if (DropDownList1.SelectedItem.Text == "From_Department") 
        { 
            fromdep();
           
        }
        else if (DropDownList1.SelectedItem.Text == "To_Department")
        { 
            todep();
            
        }

    }
    protected void SHOWDATA()
    {
        //int a = Convert.ToInt32(TextBox3.Text);
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Employee_number ='" + TextBox3.Text+"'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void BYname()
    {
        //int a = Convert.ToInt32(TextBox3.Text);
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Employee_Name ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void fromloc()
    {
        //int a = Convert.ToInt32(TextBox3.Text);
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Current_Location ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void toloc()
    {
       
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Transfer_Location ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void frompro()
    {
       
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Current_Project ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void topro()
    {
      
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Transfer_Project ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void fromdep()
    {
        
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Current_Department ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void todep()
    {
        
        sqlcon.Open();
        query = "SELECT * FROM tblEmployeeMaster WHERE  Transfer_Department ='" + TextBox3.Text + "'";
        sqlad = new SqlDataAdapter(query, sqlcon);
        ds = new DataSet();
        sqlad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        sqlcon.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeDETAIL.aspx");
    }

    protected void btnEMP_Click(object sender, EventArgs e)
    {
        Response.Redirect("TransferApplication.aspx"); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UPdate.aspx");
    }

    protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DDL1.SelectedIndex.Equals(1)) 
        {
            Response.Redirect("UPdate.aspx");
        }
       
            
        
    }



    protected void DDL1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DDL1.SelectedItem.Text == "Logout")
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        
    }
}