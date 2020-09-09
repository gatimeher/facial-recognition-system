<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarkManualAttedance.aspx.cs" Inherits="FRS.MarkManualAttedance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</head>
<body>

     <center><u>
      
             <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="AdminDashboard.aspx" class="nav-link pl-0">Profile</a></li> 	        		        		        	        	
	        </ul>
      </u></center>


     <p class="auto-style3">
        <strong>Mark Manual Attedance</strong></p>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td>Batch Code</td>
                <td>
                    <asp:DropDownList ID="BatchCodeDropDownList" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>DotNet2020</asp:ListItem>
                        <asp:ListItem>JAVA2020</asp:ListItem>
                        <asp:ListItem>Python2020</asp:ListItem>
                        <asp:ListItem>C2020</asp:ListItem>
                        <asp:ListItem>CPlus2020</asp:ListItem>
                        <asp:ListItem>MachLearning2020</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Role</td>
                <td>
                    <asp:DropDownList ID="RoleDropDownList" runat="server" OnSelectedIndexChanged="RoleDropDownList_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Student Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="StudentNameDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Student_Name" DataValueField="Student_Name" OnSelectedIndexChanged="StudentNameDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabase2ConnectionString2 %>" SelectCommand="SELECT [Student_Name] FROM [AddStudentDB]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Faculty Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="FacultyNameDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Faculty_Name" DataValueField="Faculty_Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabase2ConnectionString3 %>" SelectCommand="SELECT [Faculty_Name] FROM [AddFacultyDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>
                    <asp:DropDownList ID="SubjectDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Subject_Name" DataValueField="Subject_Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabase2ConnectionString4 %>" SelectCommand="SELECT [Subject_Name] FROM [AddSubjectDB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>In Time</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Time" Width="131px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Out Time</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Time" Width="129px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <asp:TextBox ID="DateandTimeTextBox" runat="server" TextMode="Date" Width="126px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Attendance</td>
                <td>
                    <asp:DropDownList ID="AttendanceDropDownList" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Present</asp:ListItem>
                        <asp:ListItem>Absent</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Status"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
