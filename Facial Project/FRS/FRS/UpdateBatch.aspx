<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBatch.aspx.cs" Inherits="FRS.UpdateBatch" %>

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
            <strong>Update Batch Record<br />
            </strong>
        </div>
        <table align="center" class="auto-style2">
            <tr>
                <td>Select Batch</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Batch_Code" DataValueField="Batch_Code" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString22 %>" SelectCommand="SELECT [Batch_Code] FROM [BatchDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Teacher_Name" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" ReadOnly="True" SortExpression="Teacher_Name" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="Batch_Time" HeaderText="Batch_Time" SortExpression="Batch_Time" />
                            <asp:BoundField DataField="Batch_Code" HeaderText="Batch_Code" SortExpression="Batch_Code" />
                        </Columns>
                        <EmptyDataTemplate>
                            Record does not exist
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString23 %>" DeleteCommand="DELETE FROM [BatchDB] WHERE [Teacher_Name] = @Teacher_Name" InsertCommand="INSERT INTO [BatchDB] ([Teacher_Name], [Subject], [Batch_Time], [Batch_Code]) VALUES (@Teacher_Name, @Subject, @Batch_Time, @Batch_Code)" SelectCommand="SELECT [Teacher_Name], [Subject], [Batch_Time], [Batch_Code] FROM [BatchDB] WHERE ([Batch_Code] = @Batch_Code)" UpdateCommand="UPDATE [BatchDB] SET [Subject] = @Subject, [Batch_Time] = @Batch_Time, [Batch_Code] = @Batch_Code WHERE [Teacher_Name] = @Teacher_Name">
                        <DeleteParameters>
                            <asp:Parameter Name="Teacher_Name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Teacher_Name" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="Batch_Time" Type="String" />
                            <asp:Parameter Name="Batch_Code" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Batch_Code" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="Batch_Time" Type="String" />
                            <asp:Parameter Name="Batch_Code" Type="String" />
                            <asp:Parameter Name="Teacher_Name" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
