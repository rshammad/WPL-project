<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #99FFCC;
        }
        .auto-style2 {
            margin-left: 102px;
        }
        #Button1{
            border-radius: 50px;
        }
        body{
            text-align:center;
        }
        #lblLog{
            font-size:40px;
            margin-top:100%;
        }
       table{
           margin-right:auto;
           margin-left:auto;
       }
     #TextBox1{
         border-radius:50px;
         height:20px;
     }
     #TextBox2{
         border-radius:50px;
         height:20px;
     }
         #DropDownList1{
             border-radius:50px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <asp:Label ID="lblLog" runat="server">LOGIN</asp:Label>
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td>User ID</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password</td>
                <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td> <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Login As</asp:ListItem>
            <asp:ListItem>Employee</asp:ListItem>
            <asp:ListItem>ADMIN</asp:ListItem>
        </asp:DropDownList>
        <br /></td>
            </tr> 
        <br />
        <br />
            <tr>
                <td></td>
                <td><asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Login " OnClick="Button1_Click" Width="89px" BackColor="Black" ForeColor="White" Height="32px" /></td>
            </tr>
    
    </div>
        </table>
    </form>
</body>
</html>
