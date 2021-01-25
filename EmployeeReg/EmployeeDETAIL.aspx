<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeDETAIL.aspx.cs" Inherits="EmployeeDETAIL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            text-align:center;
        }
        #lbl{
            font-size:50px;
        }
        #GRV{
            margin-right:auto;
            margin-left:auto;
        }
            #btnInsert,#btnUpdate,#btnDelete,#btnIN,#btnD,#btnUP{
          border-radius:25px;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lbl" >Employees Detail</asp:Label><br /><br />
            <asp:Label runat="server" ID="lbl2">----------------------------------------------------------------------------------</asp:Label><br /><br />
            <asp:GridView runat="server" ID="GRV"></asp:GridView>

            <asp:Button ID="btnInsert" runat="server" Text="New Employee" BackColor="Black" ForeColor="White" Width="105px" Height="31px" OnClick="btnInsert_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Height="31px" Text="Update Employee Record" BackColor="Black" ForeColor="White" Width="184px" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Height="31px" style="margin-top: 8px" BackColor="Black" ForeColor="White" Text="Delete Employee Record" Width="177px" OnClick="btnDelete_Click" />
            <br /><br /><br />
            <table>
                <tr runat="server" id="TRhide">
                    <td>Employee Number</td>
                    <td> <asp:TextBox runat="server" ID="txtN"></asp:TextBox></td>
                </tr>
                  <tr runat="server" id="TR1">
                    <td>Employee Name</td>
                    <td> <asp:TextBox runat="server" ID="Txt1"></asp:TextBox></td>
                </tr>
                  <tr runat="server" id="TR2">
                    <td>Role</td>
                    <td> <asp:TextBox runat="server" ID="Txt2"></asp:TextBox></td>
                </tr>
                  <tr runat="server" id="TR3">
                    <td>Current Project</td>
                    <td> <asp:TextBox runat="server" ID="Txt3"></asp:TextBox></td>
                </tr>
                  <tr runat="server" id="TR4">
                    <td>Current Department</td>
                    <td> <asp:TextBox runat="server" ID="Txt4"></asp:TextBox></td>
                </tr>
                  <tr runat="server" id="TR5">
                    <td>Password</td>
                    <td> <asp:TextBox runat="server" ID="Txt5"></asp:TextBox></td>
                </tr>
                <tr runat="server" id="TR6">
                    <td></td>
                    <td><asp:Button runat="server" ID="btnIN" Text="Submit" BackColor="Black" ForeColor="White" Height="32px" Width="90px" OnClick="btnIN_Click" />
                        </td>
                </tr>
                <tr runat="server" id="TR7">
                    <td></td>
                    <td> <asp:Button runat="server" ID="btnUP" Text="UPDATE RECORD" BackColor="Black" ForeColor="White" Height="32px" Width="163px" OnClick="btnUP_Click" />
                   </td>
                </tr>
                <tr runat="server" id="TR8">
                    <td></td>
                    <td><asp:Button runat="server" ID="btnD" Text="DELETE RECORD" BackColor="Black" ForeColor="White" Height="32px" Width="163px" OnClick="btnD_Click" /><br />
                        </td>
                </tr>
            </table>
              <asp:Label runat="server" ID="lblNOTE" ></asp:Label>
        </div>
    </form>
</body>
</html>
