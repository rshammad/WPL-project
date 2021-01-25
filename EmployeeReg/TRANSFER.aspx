<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TRANSFER.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            background-color: #CCCCFF;
        }
        #lblH,#Label1{
            text-align:center;
        }
        table{
            margin-left:auto;
            margin-right:auto;
            border-collapse: collapse;
            // border: 1px solid black;
             width:50%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FFFFFF">
   <asp:Label ID="lblH" runat="server">TRANSFER FORM</asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server">=============================================</asp:Label>
        <br /><br />
        <table >
            <tr>
                <td>Employee Number</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="id" ControlToValidate="TextBox1" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
        <tr>
                <td>Employee Name</td>
                <td>          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="Re2" ControlToValidate="TextBox2" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Role</td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="Re1" ControlToValidate="TextBox3" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Work Experience</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox4" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Current Project</td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox5" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Current Location</td>
                <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox6" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Transfer Project</td>
                <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox7" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Transfer Location</td>
                <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox8" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Transfer Location</td>
                <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox8" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Transfer Department</td>
                <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox10" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td>Transfer Relieving Date</td>
                <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox11" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
     <tr>
                <td>Transfer Joining Date</td>
                <td><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox12" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></tr>
     <tr>
                <td>Reporting Manager</td>
                <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox1" ErrorMessage="Please Fill This" runat="server" ></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
                <td><asp:DropDownList runat="server" ID="DDLp" AutoPostBack="True" OnSelectedIndexChanged="DDLp_SelectedIndexChanged">
                    <asp:ListItem>Position</asp:ListItem>
                    <asp:ListItem>HR</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    </asp:DropDownList> </td>
                <td><asp:TextBox runat="server" ID="txtAllo" Height="23px" Width="199px"></asp:TextBox> </td>
            </tr>
             <tr>
                <td></td>
                <td><asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="33px" Width="95px" /></td>
            </tr>
  
   </div>
</table>
    </form>
</body>
</html>
