using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Net.Mail;

namespace testtesttest
{
    public partial class package_1 : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["JACcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/customer-login");
            }
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            txtquote.Text = "Rs " + Convert.ToString(Convert.ToInt32(txtusername.Text)*12000);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sendemail();
        }


        private string getEmail()
        {
            string mail="";
            
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            //create the movieid parameter
            cmd.Parameters.AddWithValue("@uname", Session["username"]);
            //assign the parameter to the sql statement
            cmd.CommandText = "SELECT * FROM tblcustomer where cust_username = @uname";
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())

            {
                //retrieving FIELD values and assign the form controls

                mail = dr["cust_email"].ToString();
               
            }
            con.Close();
            return mail;
        }

        private void sendemail()
        {
            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();
            try
            {
                m.From = new MailAddress("testertestervik@gmail.com");
                m.To.Add(getEmail());
                m.Subject = "This is a Test Mail";
                m.IsBodyHtml = true;
                StringBuilder msgBody = new StringBuilder();
                msgBody.Append("Dear " + Session["username"] + ", your requested is the Plantation package, thank you for trustion our service.");

              

                m.Body = msgBody.ToString();
                sc.Host = "smtp.gmail.com";
                sc.Port = 587;
                sc.UseDefaultCredentials = false;
                sc.Credentials = new
                System.Net.NetworkCredential("testertestervik@gmail.com", "mmmmm000");
                sc.EnableSsl = true;
                sc.Send(m);
                Response.Write("Email Sent successfully");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}