<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchRegistration.aspx.cs" Inherits="FRS.BranchRegistration" %>

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
    
label {
  display: inline-block;
  margin-bottom: 0.5rem; }

  *,
  *::before,
  *::after {
    text-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important; }
  
*,
*::before,
*::after {
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

    </style>
</head>
<body>
    <p class="auto-style3">
        <strong>Branch Registration</strong></p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td>Branch Code</td>
                <td>
                    <asp:TextBox ID="BranchCodeTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Branch Name</td>
                <td>
                    <asp:TextBox ID="BranchNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Branch Head</td>
                <td>
                    <asp:TextBox ID="BranchHeadTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                            <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" Text="Male" />
                            <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="Gender" Text="Female" />
                            <asp:RadioButton ID="OtherRadioButton" runat="server" GroupName="Gender" Text="Other" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:DropDownList ID="StateDropDownList" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:DropDownList ID="CityDropDownList" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Branch Address</td>
                <td>
                    <asp:TextBox ID="BranchAddressTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Date of Branch Registration</td>
                <td>
                    <asp:TextBox ID="DateofBranchRegistrationTextBox" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                            <asp:Label ID="StatusLabel" runat="server" Text="Status"></asp:Label>
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
                    <asp:Button ID="EditButton" runat="server" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
