<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="request-package.aspx.cs" Inherits="testtesttest.request_package" %>
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
background-image: linear-gradient( 135deg, #FEC163 10%, #DE4313 100%);
}

.myinput{
    width:45%;
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

.MyClass input[type=checkbox]:checked + label 
{
background-color:aquamarine;
border-radius:30px;
padding:6px;
margin-left:35px;
color:black;
} 

.MyClass label{
    margin-left:25px;
}

.MyClass{
    color: royalblue;
    font-weight:bolder;
}

.MyClass input {width:20px; height:20px;}

.myinput2{
    width:25%;
    margin-left:15px;
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
                   <h1 style="font-size:5vw" class="text-white">Request a package</h1>
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
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        <div class="row">
            <div class="col-lg-6 mx-auto">

                <!-- CUSTOM BLOCKQUOTE -->
                <blockquote class="blockquote blockquote-custom bg-white p-5 shadow rounded">
                    <div class="blockquote-custom-icon bg-secondary shadow-sm"><i class="fas fa-edit text-white"></i></div>
                    <h3>Request</h3><br />
                    <p class="mb-0 mt-2 font-base">"Thank you for choosing us to care for your sugarcane fields."</p>
                    <hr />
                    <br />
                    <p><b>Choose from these procedures and create the package:</b>
                    </p>
                    <br />
                    
                    <asp:CheckBoxList ID="CheckBoxList1" CssClass="MyClass" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="true" >
                  <asp:ListItem Value="Land clearing"> &nbsp; Land clearing &nbsp; </asp:ListItem>
                        <asp:ListItem  Value="Stone removal (Epierrage)"> &nbsp; Stone removal (Epierrage) &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Hilling (Buttage)"> &nbsp; Hilling (Buttage) </asp:ListItem>
                        <asp:ListItem Value="Plantation"> &nbsp; Plantation &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Irrigation"> &nbsp; Irrigation &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Chemical Spraying"> &nbsp; Chemical Spraying &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Harvest"> &nbsp; Harvest &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Sugarcane transport"> &nbsp; Sugarcane transport &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Water containers"> &nbsp; Water containers &nbsp; </asp:ListItem>
                        <asp:ListItem Value="Additives"> &nbsp; Additives &nbsp; </asp:ListItem>
                    </asp:CheckBoxList>

                    <footer class="pt-4 mt-4 border-top">
             

 <div class="form-group row">
                                <asp:Label runat="server"
                                    CssClass=" col-form-label font-base fw-bold fontsize">Total procedures selected: </asp:Label>
                             
                                    <asp:TextBox  runat="server" ID="txttotal" ToolTip="Total selected"
                                        CssClass="form-control myinput2" Enabled="false" TextMode="Number" />

     
                            </div>
                        
                        
                        <br />
                        <hr />
                        <p>Request a quotation and we will contact you as soon as possible to negotiate.</p>

                         <br />

                        <asp:Button ID="Button4" CssClass="btn-primary btn p-3" runat="server" PostBackUrl="~/thankyou.aspx" Text="✔️ Request package"/>
                        <asp:Button ID="Button2" CssClass="btn-warning btn p-3" runat="server" Text="Cancel order" PostBackUrl="~/packages.aspx" />
                    </footer>
                </blockquote><!-- END -->
                
            </div>
        </div>
     </div>
    </div>
</section>

    
<%--                        <asp:Panel ID="Panel1" runat="server" DefaultButton="Button3">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                         <div class="form-group row">
                                <asp:Label runat="server"
                                    CssClass=" col-form-label font-base fw-bold fontsize">Quotation per kilometer: </asp:Label>
                             
                                    <asp:TextBox  runat="server" ID="txtusername" ToolTip="Quotation"
                                        CssClass="form-control myinput2" TextMode="Number" />

                            &nbsp; =
                             <asp:TextBox ID="txtquote" Enabled="false" CssClass="form-control myinput" runat="server"></asp:TextBox>


                            </div>
                        <br />
                        
                        <asp:Button ID="Button3"  CssClass="btn-dark btn p-3" runat="server" Text="Get quote" />
                          </ContentTemplate>
                            </asp:UpdatePanel>
                            </asp:Panel>--%>
    </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
