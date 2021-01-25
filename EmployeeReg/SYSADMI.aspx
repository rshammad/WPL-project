<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SYSADMI.aspx.cs" Inherits="SYSADMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color:white;
        }
        #Button2,#Button1,#btnEMP,#Button4,#Button3{
          border-radius:25px;
      }
        #GridView2{
            margin-left:auto;
            margin-right:auto;
        }
        body{
            text-align:center;
        }
        #DDL1 {
        border-radius:150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<strong> </strong> <span class="auto-style1"><strong>SYSTEM ADMINISTATOR<br /><br />
        <asp:DropDownList ID="DDL1" runat="server" AutoPostBack="True" BackColor="Black" ForeColor="White" Height="16px" OnSelectedIndexChanged="DDL1_SelectedIndexChanged1" Width="33px">
            <asp:ListItem>=</asp:ListItem>
            <asp:ListItem>Logout</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        </strong>
        <strong>
        <br />
&nbsp;<br />
             <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem>Employee_Number</asp:ListItem>
             <asp:ListItem>Name</asp:ListItem>
             <asp:ListItem>From_Location</asp:ListItem>
             <asp:ListItem>To_Location</asp:ListItem>
             <asp:ListItem>From_Project</asp:ListItem>
             <asp:ListItem>To_Project</asp:ListItem>
             <asp:ListItem>From_Department</asp:ListItem>
             <asp:ListItem>To_Department</asp:ListItem>
        </asp:DropDownList>
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" Height="39px" Width="80px" />
        <br />
    <br />
    <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <br />
            <strong><asp:Button ID="Button1" runat="server" Text="Update Recorde" Height="59px" OnClick="Button1_Click" BackColor="Black" BorderStyle="Outset" ForeColor="White" />
        </strong>
    <asp:Button ID="btnEMP" runat="server" Text="Transfer Application" Height="60px" OnClick="btnEMP_Click" BackColor="Black" BorderColor="White" ForeColor="White" />
        <asp:Button ID="Button2" runat="server" Text="Employees Recorde" OnClick="Button2_Click" Height="60px" BackColor="Black" ForeColor="White" />
        <br />
        <strong>
        <br />
        <br />
        <br />
        <br />

        </strong></span>
    
    </div>
    </form>
</body>
</html>
