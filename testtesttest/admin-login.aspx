<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="admin-login.aspx.cs" Inherits="testtesttest.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <!-- Font Icon -->
    <link rel="stylesheet" href="customer-login-file/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="customer-login-file/css/style.css">

    <style>
        .main2{
            background-image: linear-gradient( 135deg, #ABDCFF 10%, #0396FF 100%);
        }

        .mylbl{
            font-weight:100;
            font-size:20px;
        }

        .mylbl2{
            font-weight:100;
            font-size:18px;
        }

        .fontsize{
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
                        <figure><img src="customer-login-file/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="#" class="signup-image-link"></a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title"><b>ADMIN LOGIN</b></h2>
                        <div class="register-form" id="login-form">
                           <%-- <div class="form-group">
                                <%--<label class="mylbl" for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" runat="server" class=" text-black mylbl" name="your_name" id="your_name" placeholder="Enter username"/>
                            </div>--%>
                             <div class="form-group row">
                                <asp:Label runat="server"
                                    CssClass="col-md-4 col-form-label font-base fw-bold fontsize">Username: </asp:Label>
                                <div class="col-md-7">
                                    <asp:TextBox runat="server" ID="txtusername" ToolTip="Username is required"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                        ControlToValidate="txtusername"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="Please, enter username."
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Please, enter username."></asp:RequiredFieldValidator>

                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label runat="server"
                                    CssClass="col-md-4 col-form-label font-base fw-bold fontsize">Password: </asp:Label>
                                <div class="col-md-7">
                                    <asp:TextBox runat="server" TextMode="Password" ID="txtpass" ToolTip="Password is required"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                        ControlToValidate="txtpass"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="Please, enter password."
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Please, enter password."></asp:RequiredFieldValidator>

                                </div>
                             
                            </div>

                            

                            
                            
                            <div class="form-group">
                              <%--  <label id="lblpass" runat="server" for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" class="mylbl" name="your_pass" id="your_pass" placeholder="Enter Password"/>--%>
                            </div>
                            <div class="form-group">
                            </div>

                            <div class="form-group form-button">
                                <%--<input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>--%>
                                <asp:Button ID="Button1" CssClass="form-submit loginbtn" runat="server" Text="LOG IN" OnClick="Button1_Click" />
                            </div>
                            <br />
                            <a href="customer-login.aspx"><asp:Label ID="Label1" CssClass="btn-link btn text-linkedin" runat="server" Text="Login as a Customer instead?"></asp:Label></a>
                            <a href="customer-registration.aspx"><asp:Label ID="Label2" CssClass="btn-link btn text-dark" runat="server" Text="Register as a Customer?"></asp:Label></a>
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