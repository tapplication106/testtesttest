<%@ Page Title="Package 2 - Joyessur Agricultural Company LTD" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="package-2.aspx.cs" Inherits="testtesttest.package_2" %>
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
    background-image: linear-gradient( 135deg, #43CBFF 10%, #9708CC 100%);
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

             <div class="row">
            <div class="col-lg-8 mx-auto">
                <header class="text-center pb-5">
                   <h1 style="font-size:5vw" class="text-white">Irrigation package</h1>
                    <p></p>
                </header>
            </div>
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
            <div class="col-lg-6 mx-auto">

                <!-- CUSTOM BLOCKQUOTE -->
                <blockquote class="blockquote blockquote-custom bg-white p-5 shadow rounded">
                    <div class="blockquote-custom-icon bg-linkedin shadow-sm"><i class="fas fa-tint text-white"></i></div>
                    <h3>Irrigation</h3><br />
                    <p class="mb-0 mt-2 font-italic">"Thank you for choosing our irrigation package. Order it and we will contact you as soon as possible."</p>
                    <hr />
                    <br />
                    <p>The package includes the following procedures:
                        <br />
                       <br /><span class="text-linkedin">📌 &nbsp; Labourers</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Equipment cost</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Water</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Workers transport</span>
                    </p>
                    <footer class="pt-4 mt-4 border-top">
                        <p>Rs 8,000 per year</p>


                        <asp:Button ID="Button2" CssClass="btn-primary btn p-3" runat="server" PostBackUrl="~/thankyou.aspx" Text="✔️ Order package" OnClick="Button2_Click" />
                        <asp:Button ID="Button1" CssClass="btn-warning btn p-3" runat="server" Text="Cancel order" PostBackUrl="~/packages.aspx" />
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>

    </div>
</section>

</asp:Content>
