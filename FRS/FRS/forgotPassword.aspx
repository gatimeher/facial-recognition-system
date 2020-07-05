<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="FRS.forgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
   
</head>
<body>

     <form id="form2" runat="server">
         <div class="auto-style1">
    		
             <div class="auto-style1">
    		
           <br />
             </div>
        <div class="auto-style1">
            <div class="auto-style1">
            <strong>Forgot Password<br />
            <br />
           
            </strong>
            </div>
            <table align="center" class="auto-style2">
                <tr>
                    <td>
                        Select Your Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Renter new Password" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter at least One captial letter, Special Symbol, number" SetFocusOnError="True" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="StausLabel" runat="server" Text="Status"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Already have a account ? Sign in</asp:HyperLink>
                    </td>
                </tr>

            </table>
            <div class="auto-style1">
            <br />
            </div>
        </div>
    </form>
    
</body>
</html>
