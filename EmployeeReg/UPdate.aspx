<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UPdate.aspx.cs" Inherits="EmployeeReg_UPdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
            <tr>
                <td>Employee Number</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </tr>
        <tr>
                <td>Employee Name</td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </tr>
            <tr>
                <td>Role</td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         </tr>
            <tr>
                <td>Work Experience</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </tr>
            <tr>
                <td>Current Project</td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </tr>
            <tr>
                <td>Current Location</td>
                <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </tr>
            <tr>
                <td>Transfer Project</td>
                <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </tr>
            <tr>
                <td>Transfer Location</td>
                <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </tr>
            <tr>
                <td>Transfer Location</td>
                <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </tr>
            <tr>
                <td>Transfer Department</td>
                <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
         </tr>
            <tr>
                <td>Transfer Relieving Date</td>
                <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
         </tr>
     <tr>
                <td>Transfer Joining Date</td>
                <td><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                    </tr>
     <tr>
                <td>Reporting Manager</td>
                <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                   </tr>
                   <tr>
                       <td></td>
                       <td> <asp:Button runat="server" ID="btnUP" Text="Update" /></td>
                   </tr> 
        </div>
    </form>
</body>
</html>
