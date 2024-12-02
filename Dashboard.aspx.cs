using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserRegistration
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connection = "Data Source=DESKTOP-ER2ICMK\\SQLEXPRESS;Initial Catalog=Registration_DB;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                label.Text = "You have successfull logged in" + Session["user"].ToString();
                GetUserDetails();
            }
        }

        void GetUserDetails()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connection))
                {
                    con.Open();
                    string userName = Session["user"].ToString();

                    using (SqlCommand cmd = new SqlCommand("exec UserDetails @userName",con))
                    {
                        cmd.Parameters.AddWithValue("@userName", userName);

                        SqlDataAdapter sd = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sd.Fill(dt);

                        GridView.DataSource = dt;
                        GridView.DataBind();

                    }

                }
            }
            catch(Exception ex) 
            {
                Response.Write("Error " + ex.Message);
            }
        }

        protected void LogOut(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("SignIn.aspx");
            }
        }
    }
}