﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testtesttest
{
    public partial class guestmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                loggedout.Visible = false;
                btnlogout.Visible = true;
                btnregister.Visible = false;
            }
        }
    }
}