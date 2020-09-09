<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="FRS.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style15 {
            width: 60%;
            margin-left: 0px;
            margin-right: 225px;
        }
        .auto-style16 {
            height: 58px;
            text-align: left;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            text-align: left;
            height: 31px;
        }
    </style>

    
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
                                    <a href="Login.aspx" class="btn py-2 px-3 btn-primary d-flex align-items-center justify-content-center">
                                        <span>Sign In</span>
                                    </a>
                                    <div class="col-md topper d-flex align-items-center justify-content-end">
                                <p class="mb-0">
                                    <a href="registration.aspx" class="btn py-2 px-3 btn-primary d-flex align-items-center justify-content-center">
                                        <span>Register</span>
                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container d-flex align-items-center px-4">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <form>

                    <div class="collapse navbar-collapse" id="ftco-nav">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active"><a href="registration.aspx" class="nav-link pl-0">Registration Form</a></li>
                            <li class="nav-item"><a href="mywebcam.html" class="nav-link">Scan Face</a></li>
                            <li class="nav-item"><a href="finish.aspx" class="nav-link">Finish</a></li>
                            
                        </ul>
                    </div>
                </form>
            </div>
        </nav>
        <!-- END nav -->
           

    <form id="form1" runat="server">
        <div class="auto-style4">
            <div>
                <strong>
                <br />
                Register Here<br />
                <br />
                </strong>
                <table align="center" class="auto-style15">
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:RadioButton ID="AdminRadioButton" runat="server" GroupName="role" Text="Admin" />
                            <asp:RadioButton ID="FacultyRadioButton" runat="server" GroupName="role" Text="Faculty" />
                            <asp:RadioButton ID="StudentRadioButton" runat="server" GroupName="role" Text="Student" />
                                </td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">First Name</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                                </td>
                        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="First name can not be blank">Enter first name</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Last Name</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                                </td>
                        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Last name can not be blank">Enter last name</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Address</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="AddressTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Contact Number</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="ContactNumberTextBox" runat="server" TextMode="Phone"></asp:TextBox>
                            <br />
                                </td>
                        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ContactNumberTextBox" ErrorMessage="Contact Number can not be blank"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style16">
                            &nbsp;</td>
                        <td class="auto-style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Email ID</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" OnTextChanged="EmailTextBox_TextChanged"></asp:TextBox>
                                </td>
                        <td class="auto-style16">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter valid EmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email ID can not be blank"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style16">
                            &nbsp;</td>
                        <td class="auto-style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Gender</td>
                        <td class="auto-style17">
                            <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" Text="Male" />
                            <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="Gender" Text="Female" />
                            <asp:RadioButton ID="OtherRadioButton" runat="server" GroupName="Gender" Text="Other" />
                                </td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Password</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                        <td class="auto-style17">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConformPasswordTextBox" ErrorMessage="Password dose not match"></asp:CompareValidator>
                            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password can not be blank"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Please enter at least One captial letter, Special Symbol, number" SetFocusOnError="True" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Conform Password</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="ConformPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Date of Birth</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="DateOfBirthTextBox" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DateOfBirthTextBox" ErrorMessage="Date of birth can not be blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Date of Joining</td>
                        <td class="auto-style17">
                        <asp:TextBox ID="DateOfJoiningTextBox" runat="server" TextMode="Date"></asp:TextBox>
                                    </td>
                        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DateOfJoiningTextBox" ErrorMessage="Date of join can not be blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">ID Proof</td>
                        <td class="auto-style17">
                            <asp:DropDownList ID="IdProofDropDwomList" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Aadhar Card</asp:ListItem>
                                <asp:ListItem>PAN Card</asp:ListItem>
                                <asp:ListItem>Driving Licences</asp:ListItem>
                                <asp:ListItem>Rashan Card</asp:ListItem>
                                <asp:ListItem>Passport</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="IdProofDropDwomList" ErrorMessage="Please select ID Proof"></asp:RequiredFieldValidator>
                            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="IdProofDropDwomList" ErrorMessage="ID Proof can not be blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">ID Proof Number</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="IdProofNumberTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="IdProofNumberTextBox" ErrorMessage="Please enter ID Proof Number"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17"><asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style18">
                            &nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="StatusLabel" runat="server" Text="Status"></asp:Label>
                        </td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>

           
</body>
</html>
