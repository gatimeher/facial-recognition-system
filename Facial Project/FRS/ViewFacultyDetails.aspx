<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFacultyDetails.aspx.cs" Inherits="FRS.ViewFacultyDetails" %>

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
            width: 70%;
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
            <strong>View Student Details</strong></div>
        <table align="center" class="auto-style2">
            <tr>
                <td>Select Faculty</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Faculty_Name" DataValueField="Faculty_Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString40 %>" SelectCommand="SELECT [Faculty_Name] FROM [AddFacultyDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Batch_Code" HeaderText="Batch_Code" SortExpression="Batch_Code" />
                            <asp:BoundField DataField="Faculty_Name" HeaderText="Faculty_Name" SortExpression="Faculty_Name" />
                            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString41 %>" SelectCommand="SELECT [Batch_Code], [Faculty_Name], [Phone_Number], [Address], [Gender] FROM [AddFacultyDB] WHERE ([Faculty_Name] = @Faculty_Name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Faculty_Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
