<%@ Page Title="Package 3 - Joyessur Agricultural Company LTD" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="package-3.aspx.cs" Inherits="testtesttest.package_3" %>
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
  background-image: linear-gradient( 135deg, #3B2667 10%, #BC78EC 100%);
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
                   <h1 style="font-size:5vw" class="text-white">Nettoyage package</h1>
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
                    <div class="blockquote-custom-icon bg-dark shadow-sm"><i class="fas fa-snowplow text-white"></i></div>
                    <h3>Nettoyage</h3><br />
                    <p class="mb-0 mt-2 font-italic">"Thank you for choosing our land clearing package. Order it and we will contact you as soon as possible."</p>
                    <hr />
                    <br />
                    <p>The package includes the following procedures:
                        <br />
                       <br /><span class="text-linkedin">📌 &nbsp; Labourers</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Equipment cost</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Workers transport</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Waste transport</span>
                    </p>
                    <footer class="pt-4 mt-4 border-top">
                        <p>Rs 4,000 per acre</p>

                         <br />

                        <asp:Panel ID="Panel1" runat="server" DefaultButton="Button1">
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
                        
                        <asp:Button ID="Button1"  CssClass="btn-dark btn p-3" runat="server" Text="Get quote" OnClick="txtusername_TextChanged" />
                          </ContentTemplate>
                            </asp:UpdatePanel>
                            </asp:Panel>
                        <br />
                        <hr />
                        <br />

                        <asp:Button ID="Button3" CssClass="btn-primary btn p-3" runat="server" PostBackUrl="~/thankyou.aspx" Text="✔️ Order package" />
                        <asp:Button ID="Button2" CssClass="btn-warning btn p-3" runat="server" Text="Cancel order" PostBackUrl="~/packages.aspx"/>
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>

            </div>
    </div>
</section>

</asp:Content>
