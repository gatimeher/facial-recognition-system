<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBranch.aspx.cs" Inherits="FRS.UpdateBranch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 60%;
        }
        .auto-style3 {
            width: 723px;
        }
    </style>
</head>
<body>

     <center><u>
      
             <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="AdminDashboard.aspx" class="nav-link pl-0">Profile</a></li> 	        		        		        	        	
	        </ul>
      </u></center>

    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Update Branch Record</strong></div>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3">Select Branch</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Branch_Name" DataValueField="Branch_Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString20 %>" DeleteCommand="DELETE FROM [BranchDB] WHERE [Branch_Name] = @Branch_Name" InsertCommand="INSERT INTO [BranchDB] ([Branch_Name]) VALUES (@Branch_Name)" SelectCommand="SELECT [Branch_Name] FROM [BranchDB]">
                        <DeleteParameters>
                            <asp:Parameter Name="Branch_Name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Branch_Name" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Branch_Name" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Branch_Name" HeaderText="Branch_Name" ReadOnly="True" SortExpression="Branch_Name" />
                            <asp:BoundField DataField="Branch_Head" HeaderText="Branch_Head" SortExpression="Branch_Head" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                            <asp:BoundField DataField="Branch_Address" HeaderText="Branch_Address" SortExpression="Branch_Address" />
                            <asp:BoundField DataField="Date_Of_Branch_Registration" HeaderText="Date_Of_Branch_Registration" SortExpression="Date_Of_Branch_Registration" />
                            <asp:BoundField DataField="Branch_Code" HeaderText="Branch_Code" SortExpression="Branch_Code" />
                        </Columns>
                        <EmptyDataTemplate>
                            Branch Does Not Exits
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString21 %>" DeleteCommand="DELETE FROM [BranchDB] WHERE [Branch_Name] = @Branch_Name" InsertCommand="INSERT INTO [BranchDB] ([Branch_Name], [Branch_Head], [Gender], [City], [State], [Branch_Address], [Date_Of_Branch_Registration], [Branch_Code]) VALUES (@Branch_Name, @Branch_Head, @Gender, @City, @State, @Branch_Address, @Date_Of_Branch_Registration, @Branch_Code)" SelectCommand="SELECT [Branch_Name], [Branch_Head], [Gender], [City], [State], [Branch_Address], [Date_Of_Branch_Registration], [Branch_Code] FROM [BranchDB] WHERE ([Branch_Name] = @Branch_Name)" UpdateCommand="UPDATE [BranchDB] SET [Branch_Head] = @Branch_Head, [Gender] = @Gender, [City] = @City, [State] = @State, [Branch_Address] = @Branch_Address, [Date_Of_Branch_Registration] = @Date_Of_Branch_Registration, [Branch_Code] = @Branch_Code WHERE [Branch_Name] = @Branch_Name">
                        <DeleteParameters>
                            <asp:Parameter Name="Branch_Name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Branch_Name" Type="String" />
                            <asp:Parameter Name="Branch_Head" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Branch_Address" Type="String" />
                            <asp:Parameter DbType="Date" Name="Date_Of_Branch_Registration" />
                            <asp:Parameter Name="Branch_Code" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Branch_Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Branch_Head" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Branch_Address" Type="String" />
                            <asp:Parameter DbType="Date" Name="Date_Of_Branch_Registration" />
                            <asp:Parameter Name="Branch_Code" Type="String" />
                            <asp:Parameter Name="Branch_Name" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
