<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FRS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>M.K. Placement And Education Services</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        body {
  background-color: rgb(255, 183, 131);
}
        .auto-style3 {
            font-size: large;
        }
    </style>
   
</head>
<body>
   
    <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="index.html">MK  <span>Placement & Education Services</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
					    	<div class="text">
					    		<span>Email</span>
						    	<span>mkplacement@gmail.com</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <div class="text">
						    	<span>Call</span>
						    	<span>Call Us: +91 8551952574</span>
						    </div>
					    </div>
					    <div class="col-md topper d-flex align-items-center justify-content-end">
                            <p class="mb-0">
                                <a href="Login.aspx" class="btn py-2 px-3 btn-primary d-flex">
                                    <span>Sign In</span>
                                </a>
      
                        <div class="col-md topper d-flex align-items-center justify-content-end">
					    	<p class="mb-0">
					    		<a href="RegisterForm.aspx" class="btn py-2 px-3 btn-primary d-flex align-items-center justify-content-center">		    			
                                    <span>Register</span> 
					    		</a>                  
				    </div>
                   </div>
			    </div>
		    </div>
		  </div>
    </div>


    <form id="form1" runat="server">
    	<div class="container">
    		
        <div class="auto-style4">
            <div class="auto-style2">
                <font color ="black"><strong>
                <span class="auto-style7">
                <br />
                <span class="auto-style3">Login</span></span></strong><span class="auto-style5">
                </span>
            <br class="auto-style5" />
                <br />
              
                </div>
            <br />
            <table align="center" class="auto-style6">
                <tr>
                    <td>Enter Your Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a Valid Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;Enter Password<font color ="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                    </td>
                    <td>
                <font color ="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter at least One captial letter, Special Symbol, number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
            <font color ="black">
                            <asp:Button ID="Button1" runat="server" Text="Login" Height="38px" Width="94px" OnClick="Button1_Click" />
                        </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
            <font color ="black">
                            <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
            <font color ="black">
                            <strong>
                            <asp:HyperLink runat="server" NavigateUrl="forgotPassword.aspx">Forgot Password</asp:HyperLink>
                        </strong>
                        </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
            <font color ="black">
                            <strong>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Don&#39;t have an account? Register here</asp:HyperLink>
                        </strong>
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
