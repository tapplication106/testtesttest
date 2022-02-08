<%@ Page Title="Homepage - Joyessur Agricultural Company" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="testtesttest.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .mybtn{
             z-index:100;
      
        }

        .background{
            z-index:-100;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="py-0" id="header">
        <div class="bg-holder d-none d-md-block" style="background-image:url(assets/img/illustrations/hero-header.png);background-position:right top;background-size:contain;"></div>
        <!--/.bg-holder-->
        <div class="bg-holder d-md-none" style="background-image:url(assets/img/illustrations/hero-bg.png);background-position:right top;background-size:contain;"></div>
        <!--/.bg-holder-->
        <div class="container">
          <div class="row align-items-center min-vh-75 min-vh-lg-100">
            <div class="col-md-7 col-lg-6 col-xxl-5 py-6 text-sm-start text-center">
              <h1 class="mt-6 mb-sm-4 fw-semi-bold lh-sm fs-4 fs-lg-5 fs-xl-6">Joyessur Agricultural <br class="d-block d-lg-block" />Company LTD</h1>
              <p class="mb-4 fs-1">We provide you the best <u>main d'oeuvre</u> and educational materials for healthy sugarcane fields at the best price.</p>
                <%--<a class="btn btn-lg btn-success" href="packages.aspx" role="button">Browse our packages</a>--%>
                <asp:Button ID="Button2" PostBackUrl="~/packages.aspx" CssClass="btn btn-lg btn-success mybtn" runat="server" Text="Browse packages" />
                <asp:Button ID="Button4" PostBackUrl="https://agricultural-company.africamotion.net" CssClass="btn btn-lg btn-primary mybtn" runat="server" Text="Join our forum" />
            </div>
          </div>
        </div>
      </section>
      <section class="py-5" id="Opportuanities">
        <div class="bg-holder d-none d-sm-block background" style="background-image:url(assets/img/illustrations/bg.png);background-position:top left;background-size:225px 755px;margin-top:-17.5rem;"></div>
        <!--/.bg-holder-->
        <div class="container">
          <div class="row">
            <div class="col-lg-9 mx-auto text-center mb-3">
              <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Invest in your sugarcane fields</h5>
              <p class="mb-5">We have a customer base from small planters to sugar estates.</p>
            </div>
          </div>
          <div class="row flex-center h-100">
            <div class="col-xl-9">
              <div class="row">
                <div class="col-md-4 mb-5">
                  <div class="card h-100 shadow px-4 px-md-2 px-lg-3 card-span pt-6">
                    <div class="text-center text-md-start card-hover"><img class="ps-3 icons" src="assets/img/icons/farmer.svg" height="60" alt="" />
                      <div class="card-body">
                        <h6 class="fw-bold fs-1 heading-color">Connect with our stakeholders</h6>
                        <p class="mt-3 mb-md-0 mb-lg-2">Learn and share the various practices of maintaing healthy sugarcane fields with farmers on our forum.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 mb-5">
                  <div class="card h-100 shadow px-4 px-md-2 px-lg-3 card-span pt-6">
                    <div class="text-center text-md-start card-hover"><img class="ps-3 icons" src="assets/img/icons/growth.svg" height="60" alt="" />
                      <div class="card-body">
                        <h6 class="fw-bold fs-1 heading-color">Grow your business</h6>
                        <p class="mt-3 mb-md-0 mb-lg-2">We help you better invest in your sugarcane fields and earn a living by providing the best solutions for your needs.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 mb-5">
                  <div class="card h-100 shadow px-4 px-md-2 px-lg-3 card-span pt-6">
                    <div class="text-center text-md-start card-hover"><img class="ps-3 icons" src="assets/img/icons/planting.svg" height="60" alt="" />
                      <div class="card-body">
                        <h6 class="fw-bold fs-1 heading-color">Our services</h6>
                        <p class="mt-3 mb-md-0 mb-lg-2">We provide the best main d'oeuvre to cater for all types of sugarcane plants, climate and locations.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-5" id="invest">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xl-9 mb-3">
              <div class="row">
                <div class="col-lg-9 mb-3">
                  <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Select from a range of packages or create one</h5>
                  <p class="mb-5">We provide multiple options for our packages depending on your needs.</p>
                </div>
                <div class="col-md-6 mb-5">
                  <div class="card text-white"><img class="card-img" src="assets/img/gallery/short-terms.png" alt="..." />
                    <div class="card-img-overlay d-flex flex-column justify-content-center px-5 px-md-3 px-lg-5 bg-dark-gradient">
                      <h6 class="text-white pt-2"><span class=text-white >Our packages</span></h6>
                      <hr class="text-white" style="height:0.12rem;width:2.813rem" />
                      <div class="pt-lg-3">
                        <h6 class="fw-bold text-white fs-1 fs-md-2 fs-lg-3 w-xxl-50">Select existing packages</h6>
                        <p class="w-xxl-75"><br></p><%--<button onclick="~/packages.aspx" runat="server" class="btn btn-lg btn-light text-success" type="button">Browse packages</button>--%>
                          <asp:Button ID="Button1" PostBackUrl="~/packages.aspx" CssClass="btn btn-lg btn-light text-success" runat="server" Text="Browse packages" />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 mb-5">
                  <div class="card text-white"><img class="card-img" src="assets/img/gallery/fully-funded.png" alt="..." />
                    <div class="card-img-overlay d-flex flex-column justify-content-center px-5 px-md-3 px-lg-5 bg-light-gradient">
                      <h6 class="text-success pt-2">Your packages</h6>
                      <hr class="text-white" style="height:0.12rem;width:2.813rem" />
                      <div class="pt-lg-3">
                        <h6 class="fw-bold text-white fs-1 fs-md-2 fs-lg-3 w-xxl-50">Create a package</h6>
                        <p class="w-xxl-75">Request and negotiate on our services to accomodate your needs</p>
                          <asp:Button ID="Button5" PostBackUrl="~/request-package.aspx" CssClass="btn btn-lg btn-light text-success" runat="server" Text="Request packages" />
                        <%--  <button class="btn btn-lg btn-light text-success" type="button">Request packages</button>--%>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

      <section class="py-0">
        <div class="bg-holder" style="background-image:url(assets/img/illustrations/how-it-works.png);background-position:center bottom;background-size:cover;"></div>
        <!--/.bg-holder-->
        <div class="container-lg">
          <div class="row justify-content-center">
            <div class="col-sm-8 col-md-9 col-xl-5 text-center pt-8">
              <h5 class="fw-bold fs-3 fs-xxl-5 lh-sm mb-3 text-white">How it works</h5>
              <p class="mb-5 text-white">Take your pick from our packages and we will contact you as soon as possible to negotiate and create a contract.</p>
            </div>
            <div class="col-sm-9 col-md-12 col-xxl-9">
              <div class="theme-tab">
                <ul class="nav justify-content-between">
                  <li class="nav-item" role="presentation"><a class="nav-link active fw-semi-bold" href="#bootstrap-tab1" data-bs-toggle="tab" data-bs-target="#tab1" id="tab-1"><span class="nav-item-circle-parent"><span class="nav-item-circle">01</span></span></a></li>
                  <li class="nav-item" role="presentation"><a class="nav-link fw-semi-bold" href="#bootstrap-tab2" data-bs-toggle="tab" data-bs-target="#tab2" id="tab-2"><span class="nav-item-circle-parent"><span class="nav-item-circle">02</span></span></a></li>
                  <li class="nav-item" role="presentation"><a class="nav-link fw-semi-bold" href="#bootstrap-tab3" data-bs-toggle="tab" data-bs-target="#tab3" id="tab-3"><span class="nav-item-circle-parent"><span class="nav-item-circle">03</span></span></a></li>
                  <li class="nav-item" role="presentation"><a class="nav-link fw-semi-bold" href="#bootstrap-tab4" data-bs-toggle="tab" data-bs-target="#tab4" id="tab-4"><span class="nav-item-circle-parent"><span class="nav-item-circle">04</span></span></a></li>
                </ul>
                <div class="tab-content" id="myTabContent">
                  <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab-1">
                    <div class="row align-items-center my-6 mx-auto">
                      <div class="col-md-6 col-lg-5 offset-md-1">
                        <h3 class="fw-bold lh-base text-white">Browse our packages and register yourself to complete your order</h3>
                      </div>
                      <div class="col-md-5 text-white offset-lg-1">
                        <p class="mb-0">Our packages are versatile for all kinds of soil and climate. We can negotiate to modify a package according to your needs.</p>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab-2">
                    <div class="row align-items-center my-6 mx-auto">
                      <div class="col-md-6 col-lg-5 offset-md-1">
                        <h3 class="fw-bold lh-base text-white">Site visits from expert Sirdars</h3>
                      </div>
                      <div class="col-md-5 text-white offset-lg-1">
                        <p class="mb-0">After accepting a package and creating a contract, supervisors will evaluate your land and decide on how to proceed with the services.</p>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab-3">
                    <div class="row align-items-center my-6 mx-auto">
                      <div class="col-md-6 col-lg-5 offset-md-1">
                        <h3 class="fw-bold lh-base text-white">Payment after service</h3>
                      </div>
                      <div class="col-md-5 text-white offset-lg-1">
                        <p class="mb-0">We provide you with full transparency on all procedures done on your sugarcane fields. All payment should be done after each contract has been completed.</p>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab-4">
                    <div class="row align-items-center my-6 mx-auto">
                      <div class="col-md-6 col-lg-5 offset-md-1">
                        <h3 class="fw-bold lh-base text-white">Need help in choosing a package?</h3>
                      </div>
                      <div class="col-md-5 text-white offset-lg-1">
                        <p class="mb-0">Contact us on tapplication106@gmail.com or on our forum to get help from our stakeholders in choosing a package for your needs.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="py-8" id="testimonial">
        <div class="container-lg">
          <div class="row flex-center">
            <div class="col-12 col-lg-10 col-xl-12">
              <div class="bg-holder" style="background-image:url(assets/img/illustrations/testimonial-bg.png);background-position:top left;background-size:120px 83px;"></div>
              <!--/.bg-holder-->
              <h6 class="fs-3 fs-lg-4 fw-bold lh-sm">What planters like you <br />are saying about us.</h6>
            </div>
            <div class="carousel slide pt-3" id="carouselExampleDark" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                  <div class="row h-100 mx-3 mx-sm-5 mx-md-4 my-md-7 m-lg-7 mt-7">
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-1.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Bivesh Nissoo</h5>
                              <p class="fw-normal text-black">Small planter</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;Very satisfied with all the services provided so far. Very professional labourers.</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-2.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Sarah William</h5>
                              <p class="fw-normal text-black">Head of Agrogofund</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;Very cooperative and flexible. Schedule for packages are always respected. </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-3.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Mike Wazowski</h5>
                              <p class="fw-normal text-black">Herbalist</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;Joyessur Agricultural Company is not only specalised in sugarcane fields. I was surprised with their expertise and advices on other plants.  </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                  <div class="row h-100 mx-3 mx-sm-5 mx-md-4 my-md-7 m-lg-7 mt-7">
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-1.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Renilen Vangasamy</h5>
                              <p class="fw-normal text-black">Small planter</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;I have worked with Joyessur Agricultural Company for a long time and they always respect the contract.</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-2.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Strauss</h5>
                              <p class="fw-normal text-black">Head of Terra LTD</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;The director is very caring about his customers and make sure every one is happy with their services. </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-3.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Ed O’Brien</h5>
                              <p class="fw-normal text-black">Herbalist</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;I have so far not encountered any problem with the company. I strongly recommend them for their customer care.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <div class="row h-100 mx-3 mx-sm-5 mx-md-4 my-md-7 m-lg-7 mt-7">
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-1.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Garvesh Sopee</h5>
                              <p class="fw-normal text-black">Head of Alterra</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;The director is always friendly and supportive.</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-2.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Kitagawa Marin</h5>
                              <p class="fw-normal text-black">Head of Agrogofund Groups </p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;They are always active on their website and ready to help everyone whenever needed. Best customer care. Kudos. </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 mb-5 mb-md-0">
                      <div class="card h-100 shadow">
                        <div class="card-body my-3">
                          <div class="align-items-xl-center d-block d-xl-flex px-3"><img class="img-fluid me-3 me-md-2 me-lg-3" src="assets/img/gallery/user-3.png" width="50" alt="" />
                            <div class="flex-1 align-items-center pt-2">
                              <h5 class="mb-0 fw-bold text-success">Kikrant Voosul</h5>
                              <p class="fw-normal text-black">Herb planter</p>
                            </div>
                          </div>
                          <p class="mb-0 px-3 px-md-2 px-xxl-3">&quot;The company provides its expertise for all types of fields and is very supportive.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row px-3 px-sm-6 px-md-0 px-lg-5 px-xl-4">
                <div class="col-12 position-relative"><a class="carousel-control-prev carousel-icon z-index-2" href="#carouselExampleDark" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next carousel-icon z-index-2" href="#carouselExampleDark" role="button" data-bs-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span></a></div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="z-index-1 cta">
        <div class="container">
          <div class="row flex-center">
            <div class="col-12">
              <div class="card shadow h-100 py-5">
                <div class="card-body text-center">
                  <h1 class="fw-semi-bold mb-4">Provide&nbsp;<span class="text-success"> the best</span> &nbsp; for your fields with us.</h1>
                    <%--<a class="btn btn-lg btn-success px-6" href="#" role="button">Purchase our packages</a>--%>
                    <asp:Button ID="Button3" PostBackUrl="~/packages.aspx" CssClass="btn btn-lg btn-success px-6" runat="server" Text="Purchase our packages" />
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

</asp:Content>
