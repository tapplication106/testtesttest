<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="customer-registration.aspx.cs" Inherits="testtesttest.customer_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #container2 {
            width: 100%;
            /*background-image: linear-gradient( 135deg, #FFF720 10%, #3CD500 100%);*/
            border-radius: 20px;
            padding: 20px;
            margin-bottom: 20px;
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
        }

        .file {
            background-color: transparent;
            border: none;
        }
    </style>

    <script type="text/javascript">
        function validateNic(source, args) {
            if (args.Value.length == 13)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="col-lg-8 mt-7">

            <div id="container2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <div class="form-horizontal text-center  ">
                            <br />
                            <h2><i class="fas fa-user"></i>Customer Registration</h2>
                            <hr />

                            <br />

                            <asp:ValidationSummary ID="ValidationSummary1"
                                HeaderText="There are errors in the following fields:"
                                DisplayMode="BulletList"
                                ShowMessageBox="true"
                                ShowSummary="true"
                                ForeColor="#cc0000"
                                runat="server" />
                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label " Text="National ID*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtnic"
                                        ToolTip="National Identity is REQUIRED"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="reqnic"
                                        ControlToValidate="txtnic"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Username is REQUIRED"></asp:RequiredFieldValidator><br />

                                    <asp:CustomValidator ID="CusNic"
                                        runat="server"
                                        AutoPostBack="true"
                                        ControlToValidate="txtnic"
                                        ForeColor="Red"
                                        ClientValidationFunction="validateNic"
                                        OnServerValidate="CustomValidator1_ServerValidate"
                                        Text="National ID should be 13 Characters"
                                        ErrorMessage="Invalid National ID"></asp:CustomValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7"
                                        runat="server" ControlToValidate="txtnic"
                                        ValidationExpression="^[A-Z]{1}[0-9]{12}$"
                                        ErrorMessage="Invalid First Name"></asp:RegularExpressionValidator>



                                </div>
                            </div>
                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Title*"></asp:Label>
                                <div class="col-md-8">
                                    <div class="form-check-inline">
                                        <asp:RadioButton runat="server" GroupName="sex" ID="radMale" Text="Mr." />
                                        <asp:Label runat="server"
                                            CssClass="form-check-label"></asp:Label>
                                    </div>

                                    <div class="form-check-inline">
                                        <asp:RadioButton runat="server" GroupName="sex" ID="radFemale" Text="Mrs." />
                                        <asp:Label runat="server"
                                            CssClass="form-check-label"></asp:Label>
                                    </div>

                                    <div class="form-check-inline">
                                        <asp:RadioButton runat="server" GroupName="sex" ID="radMiss" Text="Miss." />
                                        <asp:Label runat="server"
                                            CssClass="form-check-label"></asp:Label>


                                    </div>



                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="First Name*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtfname"
                                        ToolTip="First name is required"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                        ControlToValidate="txtfname"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="First Name is REQUIRED!!!"></asp:RequiredFieldValidator><br />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                        runat="server" ControlToValidate="txtfname"
                                        ValidationExpression="^[a-zA-Z]*$"
                                        ErrorMessage="Invalid First Name"></asp:RegularExpressionValidator>

                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Last Name*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtlname" ToolTip="Last name is REQUIRED!!!"
                                        CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                        ControlToValidate="txtlname"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Last name is REQUIRED"></asp:RequiredFieldValidator><br />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                        runat="server" ControlToValidate="txtlname"
                                        ValidationExpression="^[a-zA-Z]*$"
                                        ErrorMessage="Invalid Last Name"></asp:RegularExpressionValidator>

                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label ID="lbljDeadline" runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Date Of Birth*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server"
                                        ID="txtjDeadline"
                                        TextMode="Date"
                                        CssClass="form-control" />

                                    <asp:RangeValidator ID="rvdob"
                                        Text="Out of range"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        ControlToValidate="txtjDeadline"
                                        runat="server"
                                        ErrorMessage="You should be 18 years"></asp:RangeValidator>

                                    <asp:RequiredFieldValidator ID="reqjDeadline"
                                        ControlToValidate="txtjDeadline"
                                        TextMode="Date"
                                        ForeColor="#cc0000"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server"
                                        ErrorMessage="Date Of Birth required!"></asp:RequiredFieldValidator>



                                </div>
                            </div>

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Street*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtstreet" runat="server"
                                        ToolTip="Street is REQUIRED"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                        ControlToValidate="txtstreet"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Street is REQUIRED"></asp:RequiredFieldValidator>



                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Area*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtarea" ToolTip="Area is REQUIRED"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                        ControlToValidate="txtarea"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Area is REQUIRED"></asp:RequiredFieldValidator><br />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                                        runat="server" ControlToValidate="txtarea"
                                        ValidationExpression="^[a-zA-Z]*$"
                                        ErrorMessage="Invalid Area"></asp:RegularExpressionValidator>

                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label ID="lbljDistrict" runat="server"
                                    CssClass="col-md-2 col-form-label" Text="District*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddljDistrict" runat="server"
                                        CssClass="form-control">
                                        <asp:ListItem Value="-1">Select District:</asp:ListItem>
                                        <asp:ListItem Value="1">Flacq</asp:ListItem>
                                        <asp:ListItem Value="2">Grand Port</asp:ListItem>
                                        <asp:ListItem Value="3">Moka</asp:ListItem>
                                        <asp:ListItem Value="4">Pamplemousses</asp:ListItem>
                                        <asp:ListItem Value="5">Plaines Wilhems</asp:ListItem>
                                        <asp:ListItem Value="6">Port Louis</asp:ListItem>
                                        <asp:ListItem Value="7">Riviere du Rempart</asp:ListItem>
                                        <asp:ListItem Value="8">Riviere Noire</asp:ListItem>
                                        <asp:ListItem Value="9">Savanne</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Mobile Phone*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtphone" ToolTip="Mobile Phone is REQUIRED"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                                        ControlToValidate="txtphone"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Mobile Phone is REQUIRED"></asp:RequiredFieldValidator><br />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                                        runat="server" ControlToValidate="txtphone"
                                        ValidationExpression="^[5]{1}\d{7}$"
                                        ErrorMessage="Invalid Mobile Number"></asp:RegularExpressionValidator>



                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Telephone*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txttel" ToolTip="Telephone Phone is REQUIRED!!!"
                                        CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                        ControlToValidate="txttel"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Telephone Number is REQUIRED*"></asp:RequiredFieldValidator><br />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
                                        runat="server" ControlToValidate="txttel"
                                        ValidationExpression="^[246]{1}\d{6}$"
                                        ErrorMessage="Invalid Mobile Number"></asp:RegularExpressionValidator>




                                </div>

                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Email*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtemail" ToolTip="Email is REQUIRED"
                                        CssClass="form-control" />



                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                        ControlToValidate="txtemail"
                                        ForeColor="#cc0000"
                                        SetFocusOnError="true"
                                        Display="Dynamic"
                                        Text="Invalid Email"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                                        runat="server"
                                        ErrorMessage="Incorrect Email Format"></asp:RegularExpressionValidator>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                        ControlToValidate="txtemail"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="EMAIL is REQUIRED"></asp:RequiredFieldValidator>


                                </div>
                            </div>

                            <br />



                            <div class="form-group row justify-content-center">
                                <asp:Label ID="Label1" runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Upload Picture*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:FileUpload ID="FileUpload1" runat="server"
                                        CssClass=" file form-control" />
                                </div>


                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Username*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtusername" ToolTip="Username is REQUIRED"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                                        ControlToValidate="txtusername"
                                        ForeColor="#cc0000"
                                        Display="Dynamic"
                                        Text="REQUIRED FIELD"
                                        SetFocusOnError="true"
                                        runat="server" ErrorMessage="Username is REQUIRED"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Password*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtpass" ToolTip="Password is REQUIRED"
                                        TextMode="Password"
                                        CssClass="form-control" />

                                    <asp:RequiredFieldValidator ID="reqpass"
                                        ControlToValidate="txtpass"
                                        runat="server"
                                        ForeColor="#cc0000"
                                        Text="REQUIRED FIELD"
                                        ErrorMessage="Password is REQUIRED"></asp:RequiredFieldValidator><br />

                                    <asp:RegularExpressionValidator ID="regPass"
                                        ControlToValidate="txtpass"
                                        ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"
                                        runat="server"
                                        ErrorMessage="Password should contain both number and character**"></asp:RegularExpressionValidator>

                                </div>
                            </div>

                            <br />

                            <div class="form-group row justify-content-center">
                                <asp:Label runat="server"
                                    CssClass="col-md-2 col-form-label" Text="Confirm Password*"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtconfirm" TextMode="Password"
                                        CssClass="form-control" />



                                    <asp:RequiredFieldValidator ID="ReqCpassword"
                                        ControlToValidate="txtconfirm"
                                        runat="server"
                                        ForeColor="#cc0000"
                                        Text="REQUIRED FIELD"
                                        ErrorMessage="Confirm Password is REQUIRED "></asp:RequiredFieldValidator><br />

                                    <asp:CompareValidator ID="conPassword"
                                        runat="server"
                                        SetFocusOnError="true"
                                        ControlToCompare="txtpass"
                                        ControlToValidate="txtconfirm"
                                        Operator="Equal"
                                        Text="Password do not Match"
                                        ErrorMessage="Password does not match"></asp:CompareValidator>

                                </div>
                            </div>

                            <br />
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>

                <div>
                    <div class="form-group row justify-content-center">
                        <div class="offset-md-2 col-md-2">
                            <asp:Button runat="server" ID="btnregister1"
                                Text="REGISTER" OnClick="btnregister1_Click"
                                CssClass="btn btn-block btn-primary" />
                        </div>
                    </div>

                    <br />

                    <div class="form-group row justify-content-center">
                        <div class="offset-md-2 col-md-2">
                            <asp:LinkButton runat="server" CausesValidation="false"
                                ID="lnkreset"
                                Text="CLEAR ALL" OnClick="lnkreset_Click"
                                CssClass="btn btn-block btn-danger" />
                        </div>
                    </div>
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

                </div>

            </div>
        </div>

    </div>
</asp:Content>
