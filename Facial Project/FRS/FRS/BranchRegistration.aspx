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

     <center><u>
      
             <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="AdminDashboard.aspx" class="nav-link pl-0">Profile</a></li> 	        		        		        	        	
	        </ul>
      </u></center>


    <p class="auto-style3">
        <strong>Branch Registration</strong></p>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td>Branch Code</td>
                <td>
                    <asp:DropDownList ID="BranchCodeDropDownList" runat="server" AutoPostBack="True">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Bharat Nagar (NGP101)</asp:ListItem>
                        <asp:ListItem>Sadar (NGP102)</asp:ListItem>
                        <asp:ListItem>Shanivar Peth (PUNE101)</asp:ListItem>
                        <asp:ListItem>Juna Bazarr (PUNE102)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Branch Name</td>
                <td>
                    <asp:DropDownList ID="BranchNameDropDownList" runat="server" AutoPostBack="True">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>MK Placement (NGP101)</asp:ListItem>
                        <asp:ListItem>MK Placement (NGP102)</asp:ListItem>
                        <asp:ListItem>MK Placement (PUNE101)</asp:ListItem>
                        <asp:ListItem>MK Placement (PUNE101)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Branch Head</td>
                <td>
                    <asp:DropDownList ID="BranchHeadDropDownList" runat="server" AutoPostBack="True">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Mr. Gati Meher</asp:ListItem>
                        <asp:ListItem>Mr. Ashish Gajbhiye</asp:ListItem>
                        <asp:ListItem>Ms. Divya Jain</asp:ListItem>
                    </asp:DropDownList>
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
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
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
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
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
                    <asp:TextBox ID="DateofBranchRegistrationTextBox" runat="server" TextMode="Date"></asp:TextBox>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                            <asp:Label ID="StatusLabel" runat="server" Text="Status"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
