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
    </style>
</head>
<body>
    <p class="auto-style3">
        <strong>Mark Manual Attedance</strong></p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td>Batch Code</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Student Name</td>
                <td>
                    <asp:TextBox ID="StudentNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Roll Number</td>
                <td>
                    <asp:TextBox ID="RollNumberTextBox" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Attendance</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
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
                <td>Date and Time</td>
                <td>
                    <asp:TextBox ID="DateandTimeTextBox" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="SaveButton" runat="server" Text="Save" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="EditButton" runat="server" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
