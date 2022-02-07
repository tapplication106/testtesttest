<%@ Page Title="Package 1 - Joyessur Agricultural Company LTD" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="package-1.aspx.cs" Inherits="testtesttest.package_1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>

    <style>
        .blockquote-custom {
  position: relative;
  font-size: 1.1rem;
}

.blockquote-custom-icon {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  top: -25px;
  left: 50px;
}

.mtcards{
    background-image: linear-gradient( 135deg, #79F1A4 10%, #0E5CAD 100%);
}

.myinput{
    width:35%;
    margin-left:15px;
}

.myinput2{
    width:25%;
    margin-left:15px;
}

@media screen and (min-width: 601px) {
  div.example {
    font-size: 80px;
  }
}

/* If the screen size is 600px wide or less, set the font-size of <div> to 30px */
@media screen and (max-width: 600px) {
  div.example {
    font-size: 70px;
  }
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="py-5 mtcards">
    <div class="container">
        
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <header class="text-center pb-5">
                    <h1 class="h2"></h1>
                    <p></p>
                </header>
            </div>
        </div><!-- END -->

        <div class="row">
            <div class="col-lg-6 mx-auto">
                <header class="text-center pb-5">
                    <h1 class="h2"></h1>
                    <p></p>
                </header>
            </div>
        </div><!-- END -->

           <div class="row">
            <div class="col-lg-8 mx-auto">
                <header class="text-center pb-5">
                   <h1 style="font-size:5vw" class="text-white">Plantation package</h1>
                    <p></p>
                </header>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 mx-auto">
                <header class="text-center pb-5">
                    <h1 class="h2"></h1>
                    <p></p>
                </header>
            </div>
        </div><!-- END -->


        <div class="row">
            <div class="col-lg-6 mx-auto">

                <!-- CUSTOM BLOCKQUOTE -->
                <blockquote class="blockquote blockquote-custom bg-white p-5 shadow rounded">
                    <div class="blockquote-custom-icon bg-success shadow-sm"><i class="fas fa-seedling text-white"></i></div>
                    <h3>Plantation</h3><br />
                    <p class="mb-0 mt-2 font-italic">"Thank you for choosing our plantation package. Order it and we will contact you as soon as possible."</p>
                    <hr />
                    <br />
                    <p>The package includes the following procedures:
                        <br />
                       <br /><span class="text-linkedin">📌 &nbsp; Labourers</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Workers Transport</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Additive Costs</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Sugarcane saplings with 3 knots</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Transport and Plantation of saplings</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Equipment and Chemical costs</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Soil cost (2 inches)</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Spraying</span>
                       
                    </p>
                    <footer class="pt-4 mt-4 border-top">
                        <p>Rs 12,000 per acre</p>

                        <br />

                        <asp:Panel ID="Panel1" runat="server" DefaultButton="Button3">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                         <div class="form-group row">
                                <asp:Label runat="server"
                                    CssClass=" col-form-label font-base fw-bold fontsize">Quotation per acre: </asp:Label>
                             
                                    <asp:TextBox  runat="server" ID="txtusername" ToolTip="Quotation"
                                        CssClass="form-control myinput2" TextMode="Number" />

                            &nbsp; =
                             <asp:TextBox ID="txtquote" Enabled="false" CssClass="form-control myinput" runat="server"></asp:TextBox>


                            </div>
                        <br />
                        
                        <asp:Button ID="Button3"  CssClass="btn-dark btn p-3" runat="server" Text="Get quote" OnClick="txtusername_TextChanged" />
                          </ContentTemplate>
                            </asp:UpdatePanel>
                            </asp:Panel>
                        <br />
                        <hr />
                        <br />
                        <asp:Button ID="Button1" CssClass="btn-primary btn p-3" runat="server" PostBackUrl="~/thankyou.aspx" Text="✔️ Order package" OnClick="Button1_Click"/>

                        <asp:Button ID="Button2" CssClass="btn-warning btn p-3" runat="server" PostBackUrl="~/packages.aspx" Text="Cancel order" />
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>

    </div>
</section>

</asp:Content>
