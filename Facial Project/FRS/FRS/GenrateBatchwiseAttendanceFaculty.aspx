<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenrateBatchwiseAttendanceFaculty.aspx.cs" Inherits="FRS.GenrateBatchwiseAttendanceFaculty" %>

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
            width: 60%;
        }
    </style>
</head>
<body>
    <p class="auto-style3">
            <strong><span class="auto-style2">&nbsp;Generate Batch Wise Attendance Report</span></strong></p>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style4">
                <tr>
                    <td>Enter Faculty Name</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Faculty_Name" DataValueField="Faculty_Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 22px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabase2ConnectionString8 %>" SelectCommand="SELECT [Faculty_Name] FROM [AddFacultyDB]"></asp:SqlDataSource>
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
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
