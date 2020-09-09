<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFaculty.aspx.cs" Inherits="FRS.AddFaculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            width: 356px;
            text-align: left;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
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




body {
  background-color: rgb(255, 183, 131);
}

        .auto-style7 {
            width: 340px;
            text-align: left;
        }
        
    </style>
</head>
<body>

     <center><u>      
             <ul class="navbar-nav mr-auto">
	        	<a href="AdminDashboard.aspx" class="nav-link pl-0"><strong>Profile</strong></a> 	        		        		        	        	
	        </ul>
      </u></center>


    <p class="auto-style6">
        <br />
        <strong><span class="auto-style5" align="center">Faculty Registration</span></strong></p>
     <p class="auto-style6">
         &nbsp;</p>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Faculty Name </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="FacultyNameTextBox" runat="server" Height="23px" Width="175px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FacultyNameTextBox" ErrorMessage="First name can not be blank">Enter first name</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="AddressTextBox" runat="server" TextMode="MultiLine" Height="23px" Width="175px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone Number</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" TextMode="Phone" Height="23px" Width="175px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="PhoneNumberTextBox" ErrorMessage="Contact Number can not be blank"></asp:RequiredFieldValidator>
                            </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender</td>
                    <td class="auto-style7">
                            <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" Text="Male" />
                            &nbsp;
                            <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="Gender" Text="Female" />
                            &nbsp;&nbsp;
                            <asp:RadioButton ID="OtherRadioButton" runat="server" GroupName="Gender" Text="Other" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Assign Subject to Faculty</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Subject_Name" DataValueField="Subject_Name" Height="16px" Width="175px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FRSDatabase2ConnectionString %>" SelectCommand="SELECT [Subject_Name] FROM [AddSubjectDB]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Assign Batch to Faculty</td>
                    <td class="auto-style7">
                    <asp:DropDownList ID="BatchCodeDropDownList" runat="server" Height="23px" Width="175px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>DotNet2020</asp:ListItem>
                        <asp:ListItem>JAVA2020</asp:ListItem>
                        <asp:ListItem>Python2020</asp:ListItem>
                        <asp:ListItem>C2020</asp:ListItem>
                        <asp:ListItem>CPlus2020</asp:ListItem>
                        <asp:ListItem>MachLearning2020</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="BatchCodeDropDownList" ErrorMessage="Please select Batch for assign to Faculty"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                            &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                            <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
