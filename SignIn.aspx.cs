using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace UserRegistration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connection = "Data Source=DESKTOP-ER2ICMK\\SQLEXPRESS;Initial Catalog=Registration_DB;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connection))
                {
                    SqlDataReader dr;
                    con.Open();
                    string userName = usernameTextbox.Text;
                    string pass = passwordTextbox.Text;

                    using (SqlCommand cmd = new SqlCommand("exec UserLogin @userName, @pass",con))
                    {
                        cmd.Parameters.AddWithValue("@userName", userName);
                        cmd.Parameters.AddWithValue("@pass", pass);

                        dr = cmd.ExecuteReader();
                          
                    }
                    if (dr.HasRows)
                    {
                        Session["user"] = usernameTextbox.Text;
                        Response.Redirect("Dashboard.aspx");

                    }
                    else
                    {

                        Response.Redirect("SignIN.aspx");

                    }
                }
            }
            catch(Exception ex) 
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);
            }
        }
    }
}