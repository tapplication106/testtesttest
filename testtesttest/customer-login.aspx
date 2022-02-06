<%@ Page Title="Customer Registration - Joyessur Agricultural Company" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="customer-login.aspx.cs" Inherits="testtesttest.customer_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Font Icon -->
    <link rel="stylesheet" href="customer-login-file/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="customer-login-file/css/style.css">

    <style>
        .main2{
            background-image: linear-gradient( 135deg, #81FBB8 10%, #28C76F 100%);
        }

        .mylbl{
            font-weight:100;
            font-size:20px;
        }

        .mylbl2{
            font-weight:100;
            font-size:18px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="main2">

      <section class="sign-in">
            <div class="container2">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="customer-login-file/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="#" class="signup-image-link"></a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title"><b>CUSTOMER LOGIN</b></h2>
                        <div class="register-form" id="login-form">
                            <div class="form-group">
                                <label class="mylbl" for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" runat="server" class="text-black mylbl" name="your_name" id="your_name" placeholder="Enter username"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" class="mylbl" name="your_pass" id="your_pass" placeholder="Enter Password"/>
                            </div>
                            <div class="form-group">
                               
                                <label for="remember-me" class="col-md-5 col-form-label" >Remember me: </label><br />
                                 <asp:CheckBox ID="CheckBox1" CssClass="col-md-2" Enabled="true" runat="server" />
                            </div>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>--%>
                                <asp:Button ID="Button1" CssClass="form-submit loginbtn" runat="server" Text="LOG IN" />
                            </div>
                            <br />
                            <asp:Label ID="Label1" CssClass="btn-link btn text-linkedin" runat="server" Text="Already have an account?"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        </div>

    <!-- JS -->
    <script src="customer-login-file/vendor/jquery/jquery.min.js"></script>
    <script src="customer-login-file/js/main.js"></script>

</asp:Content>
