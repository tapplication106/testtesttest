using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testtesttest
{
    public partial class package_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/customer-login");
            }
        }



        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            txtquote.Text = "Rs " + Convert.ToString(Convert.ToInt32(txtusername.Text) * 550) + " - " + " Rs " + Convert.ToString(Convert.ToInt32(txtusername.Text) * 625);
        }
    }
}