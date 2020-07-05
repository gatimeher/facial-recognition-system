<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FRS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    	<div class="container">
    		
        <div class="auto-style4">
            <div class="auto-style2">
            <strong>Login</strong>
            <br />
            <br />
              
                </div>
                <table align="center" class="auto-style3">
                    <tr>
                        <td class="auto-style2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Height="28px" OnTextChanged="TextBox1_TextChanged1" Width="265px" placeholder="Enter a Email ID" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="265px" placeholder="Enter a Password" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" Text="Login" Height="38px" Width="94px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="StatusLabel" runat="server" Text="Status"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:HyperLink runat="server" NavigateUrl="forgotPassword.aspx">Forgot Password</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Don&#39;t have an account? Register here</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <div class="auto-style2">
                <br />
                
            </div>
        </div>
    </form>
    
    <p class="auto-style2">
        &nbsp;</p>
    
    <p class="auto-style2">
        &nbsp;</p>
    
</body>
</html>
