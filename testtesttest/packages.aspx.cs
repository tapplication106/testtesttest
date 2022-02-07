using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testtesttest
{
    public partial class package : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                plant.Visible = false;
                irrig.Visible = false;
                harv.Visible = false;
                cut.Visible = false;
                Button1.OnClientClick = "return confirm('You need to login to view prices and request packages')";
                Button2.OnClientClick = "return confirm('You need to login to view prices and request packages')";
                Button3.OnClientClick = "return confirm('You need to login to view prices and request packages')";
                Button4.OnClientClick = "return confirm('You need to login to view prices and request packages')";
            }
        }
    }
}