using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace testtesttest
{
    public partial class customer_registration : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["JACcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            rvdob.MinimumValue = DateTime.Now.AddYears(-45).ToShortDateString();
            rvdob.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
            rvdob.Type = ValidationDataType.Date;

            txtnic.Focus();
        }

        protected void btnregister1_Click(object sender, EventArgs e)
        {
            string filePP = "avatar.jpg";
            string gender = "";
            if (radFemale.Checked == true)
            {
                gender = radFemale.Text;

            }
            else if (radMale.Checked == true)
            {
                gender = radMale.Text;
            }
            else if (radMiss.Checked == true)
            {
                gender = radMiss.Text;
            }

            if (FileUpload1.HasFile)
            {
                if (CheckFileType(FileUpload1.FileName))
                {
                    filePP = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") +
                    filePP);
                }
            }


            Boolean IsAdded = false;
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            //add INSERT statement to create new movie
            cmd.CommandText = "insert into tblCustomer (Cust_nic, Cust_title, Cust_fname, Cust_lname, Cust_dob, Cust_street, Cust_area, " +
                "Cust_district, Cust_phone, Cust_email, Cust_image, Cust_username, Cust_password, Cust_status) values " +
                "(@nic, @title, @fname, @lname, @dob, @street, @area, @district, @phone, @email, @profpic, @username, @pass, 'active')";
            //create Parameterized query to prevent sql injection by

            cmd.Parameters.AddWithValue("@nic", txtnic.Text.Trim());
            cmd.Parameters.AddWithValue("@fname", txtfname.Text.Trim());
            cmd.Parameters.AddWithValue("@lname", txtlname.Text.Trim());
            cmd.Parameters.AddWithValue("@dob", txtjDeadline.Text.Trim());
            cmd.Parameters.AddWithValue("@title", gender);
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", txtphone.Text.Trim());
            cmd.Parameters.AddWithValue("@profpic", filePP);
            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", Encrypt(txtpass.Text.Trim()));
            cmd.Parameters.AddWithValue("@area", txtarea.Text.Trim());
            cmd.Parameters.AddWithValue("@street", txtstreet.Text.Trim());
            cmd.Parameters.AddWithValue("@district", ddljDistrict.SelectedItem.Text);



            cmd.Connection = con;
            con.Open();
            //use Command method to execute INSERT statement and return
            //Boolean true if number of records inserted is greater than zero
            IsAdded = cmd.ExecuteNonQuery() > 0;
            con.Close();
            if (IsAdded)
            {
                lblMsg.Text = "Good!";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                //Refresh the GridView by calling the BindMovieData()

            }
            else
            {
                lblMsg.Text = "Error while adding customer!!";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            Response.Redirect("~/customer-login");
        }

        protected void lnkreset_Click(object sender, EventArgs e)
        {
            ResetAll();
        }

        private void ResetAll()
        {
            txtnic.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtjDeadline.Text = "";
            txtstreet.Text = "";
            txtarea.Text = "";
            txtphone.Text = "";
            txtemail.Text = "";
            txtusername.Text = "";
            txtpass.Text = "";
            ddljDistrict.SelectedIndex = -1;

            /*
            * [Cust_id]       INT           IDENTITY (1, 1) NOT NULL,
   [Cust_nic]        CHAR (14)    NOT NULL,
   [Cust_title]    VARCHAR (50)  NOT NULL,
   [Cust_fname]    VARCHAR (50)  NOT NULL,
   [Cust_lname]    VARCHAR (50)  NOT NULL,
   [Cust_dob]      DATE          NULL,
   [Cust_street]   VARCHAR (50)  NULL,
   [Cust_area]     VARCHAR (50)  NULL,
   [Cust_district] VARCHAR (50)  NULL,
   [Cust_phone]    NUMERIC (15)  NULL,
   [Cust_email]    VARCHAR (50)  NULL,
   [Cust_image]    VARCHAR (MAX) NULL,
   [Cust_username] VARCHAR (50)  NOT NULL,
   [Cust_password] VARCHAR (50)  NOT NULL,
   [Cust_status]   VARCHAR (50)  NULL,
            * 
            */

        }

        public string Encrypt(string clearText)
        {
            // defining encrytion key
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new
               byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    // encoding using key
                    using (CryptoStream cs = new CryptoStream(ms,
                   encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;

                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length > 0 && args.Value.Length == 13)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}