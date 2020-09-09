<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateStudentAttendanceReport.aspx.cs" Inherits="FRS.GenerateAttendanceReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 70%;
        }
        body {
  background-color: rgb(255, 183, 131);
}
    </style>
</head>
<body>
    <!--
     <center><u>      
             <ul class="navbar-nav mr-auto">
	        	<a href="AdminDashboard.aspx" class="nav-link pl-0">Profile</a>	        		        		        	        	
	        </ul>
      </u></center>
    -->


    <form id="form1" runat="server">
        <p class="auto-style3">
            <strong><span class="auto-style2">&nbsp; Generate Attendance Report</span></strong></p>
        <table align="center" class="auto-style4">
            <tr>
                <td>
                    <asp:Label ID="EnterStudentNameLabel" runat="server" Text="Enter Student Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="EnterStudentNameTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Batch_Code" HeaderText="Batch_Code" SortExpression="Batch_Code" />
                            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="In_Time" HeaderText="In_Time" SortExpression="In_Time" />
                            <asp:BoundField DataField="Out_Time" HeaderText="Out_Time" SortExpression="Out_Time" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
                        </Columns>
                        <EmptyDataTemplate>
                            <strong><span class="auto-style3">No Record Found for this Name<br /> </span></strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabaseConnectionString25 %>" SelectCommand="SELECT [Batch_Code], [Student_Name], [Subject], [In_Time], [Out_Time], [Date], [Attendance] FROM [StudentMarkManualAttendanceDB] WHERE ([Student_Name] = @Student_Name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="EnterStudentNameTextBox" Name="Student_Name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="SelectStartDateLabel" runat="server" Text="Select Start Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="SelectStartDateTextBox" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="SelectEndDateLabel0" runat="server" Text="Select End Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="SelectEndDateTextBox" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="SearchRecordDateWiseButton" runat="server" OnClick="SearchRecordDateWiseButton_Click1" Text="Search Record Date Wise" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server">
                        <EmptyDataTemplate>
                            <strong><span class="auto-style3">Record Not Found for this search </span></strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
