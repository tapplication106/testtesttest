<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="package.aspx.cs" Inherits="testtesttest.package" %>
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
    background-image: linear-gradient( 135deg, #5EFCE8 10%, #736EFE 100%);
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
                    <p class="mb-0 mt-2 font-italic">"Joyessur Agricultural Company LTD is specialised in planting all kinds of sugarcane saplings on all soil types and region."</p>
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
                        <asp:Button ID="Button1" CssClass="btn-primary btn p-3" runat="server" Text="🛒 Buy package" />
                    </footer>
                </blockquote><!-- END -->

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
                    <p class="mb-0 mt-2 font-italic">"The company can also do all types of irrigation for all types of fields, either manually or by machines, depending on the region and type of sugarcane."</p>
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
                        <asp:Button ID="Button2" CssClass="btn-primary btn p-3" runat="server" Text="🛒 Buy package" />
                    </footer>
                </blockquote><!-- END -->

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
                    <p class="mb-0 mt-2 font-italic">"We do all kinds of land clearing such as cutting down of big plants and trees either manually or by machines."</p>
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
                        <asp:Button ID="Button3" CssClass="btn-primary btn p-3" runat="server" Text="🛒 Buy package" />
                    </footer>
                </blockquote><!-- END -->

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
                    <div class="blockquote-custom-icon bg-danger shadow-sm"><i class="fas fa-industry text-white"></i></div>
                    <h3>Harvest</h3><br />
                    <p class="mb-0 mt-2 font-italic">"We do all kinds of land clearing such as cutting down of big plants and trees either manually or by machines."</p>
                    <hr />
                    <br />
                    <p>The package includes the following procedures:
                        <br />
                       <br /><span class="text-linkedin">📌 &nbsp; Labourers</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Equipment cost</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Workers transport</span>
                        <br /><span class="text-linkedin">📌 &nbsp; Crop transport</span>
                    </p>
                    <footer class="pt-4 mt-4 border-top">
                        <p>Rs 550 to Rs 625 depending on distance.</p>
                        <asp:Button ID="Button4" CssClass="btn-primary btn p-3" runat="server" Text="🛒 Buy package" />
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>

    </div>
</section>
</asp:Content>
