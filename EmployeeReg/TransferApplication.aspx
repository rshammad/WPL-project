<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferApplication.aspx.cs" Inherits="TransferApplication" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label runat="server" ID="lbl" >Employees Detail</asp:Label><br /><br />
            <asp:Label runat="server" ID="lbl2">----------------------------------------------------------------------------------</asp:Label><br /><br />
            <asp:GridView runat="server" ID="GRV">
            </asp:GridView>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                 <Columns>
                     <asp:TemplateField HeaderText="Approval">
                         <ItemTemplate>
                             <asp:CheckBox ID="CheckBox1" runat="server" />
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:BoundField DataField="Employee_number" HeaderText="Employee Numbr">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Employee_Name" HeaderText="Employee Name">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Role" HeaderText="Role">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Work_Experience" HeaderText="Experience">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Current_Project" HeaderText="Current Project">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Transfer_Project" HeaderText="Transfer Project">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Current_Location" HeaderText="Current Location">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Transfer_Location" HeaderText="Transfer Location">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Current_Department" HeaderText="Current Department" />
                     <asp:BoundField DataField="Transfer_Department" HeaderText="Transfer Department">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Transfer_Relieving_Date" HeaderText="Transfer Relieving Date">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Transfer_Joining_Date" HeaderText="Transfer Joining Date">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Reporting_Manager" HeaderText="Reporting Manager">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                 </Columns>
             </asp:GridView>
        
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Approve Application" BackColor="Black" ForeColor="White" OnClick="Button1_Click" />
             <br />
            <asp:Label ID="lbl13" runat="server"></asp:Label><br /><br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ManagementSystemConnectionString %>" SelectCommand="SELECT Employee_number, Employee_Name, Role, Work_Experience, Current_Project, Transfer_Project, Current_Location, Transfer_Location, Current_Department, Transfer_Department, Transfer_Relieving_Date, Transfer_Joining_Date, Reporting_Manager FROM tblEmployeeMaster WHERE (Approved = 'N')"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
