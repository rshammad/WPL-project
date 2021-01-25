<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EMPDETAILS.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #99CCFF;
        }
          body{
            text-align:center;
        }
        #lbl{
            text-align:center;
        }
        #GridView1{
            margin-left:auto;
            margin-right:auto;
        }
        #Button1, #Button2, #Button3,#btnCH {
            border-radius: 50px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <strong><span class="auto-style1">&nbsp; EMPLOYEE DETAILS<br />
        </span></strong>
        <asp:Label ID="lbl" runat="server">------------------------------------------------------------------------</asp:Label><br /><br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <br />
        <br />

&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button1" runat="server" Text="TRANSFER FORM" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="35px" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Logout" OnClick="Button2_Click" BackColor="Black" ForeColor="White" Height="35px" Width="94px" />
        &nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCH" Text="Check Your Request" BackColor="Black" ForeColor="White" Height="34px" Width="138px" OnClick="btnCH_Click" />
      
    </div>
    </form>
</body>
</html>
