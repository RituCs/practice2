using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.WebSockets;
using System.Data.Common;
using System.Data;

namespace UserRegistration
{
    public partial class _Default : Page
    {
        string connection = "Data Source=DESKTOP-ER2ICMK\\SQLEXPRESS;Initial Catalog=Registration_DB;Integrated Security=True;Encrypt=False";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDown();
                RadioButton();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                using(SqlConnection con = new SqlConnection(connection)) {
                    con.Open();
                    string username;
                    int result;
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) + 1 FROM user_tbl", con))
                    {
                        
                        int tmp = Convert.ToInt32(cmd.ExecuteScalar());
                        username = firstnameTextbox.Text + tmp.ToString("D3");
                    }

                    string firstName = firstnameTextbox.Text;
                    string middleName = middlenameTextbox.Text;
                    string lastName = lastnameTextbox.Text;
                    string gender = radiobutton.SelectedValue;
                    string mobile = mobilenumTextbox.Text;
                    string email = emailTextbox.Text;
                    string hobbies = dropdown.SelectedValue;
                    string addr = addressTextbox.Text;
                    string pass = passwordTextbox.Text;



                    using (SqlCommand cmd = new SqlCommand("exec UserRegistration @firstName, @middleName, @lastName, @gender, @mobile, @email, @hobbies, @addr, @pass, @username",con))
                    {
                        cmd.Parameters.AddWithValue("@firstName", firstName);
                        cmd.Parameters.AddWithValue("@middleName", middleName);
                        cmd.Parameters.AddWithValue("@lastName", lastName);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@mobile", mobile);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@hobbies", hobbies);
                        cmd.Parameters.AddWithValue("@addr", addr);
                        cmd.Parameters.AddWithValue("@pass", pass);
                        cmd.Parameters.AddWithValue("@username", username);

                         cmd.ExecuteNonQuery();
                    }

                 
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registration Successfull');",true);
                    
                      

                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);
            }
        }


        void BindDropDown()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connection))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("exec HobbyList",con))
                    {
                        SqlDataAdapter sd = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sd.Fill(dt);
                        dropdown.DataSource = dt;
                        dropdown.DataTextField = "hobby";
                        dropdown.DataValueField = "hobby";
                        dropdown.DataBind();


                    }

                }
            }
            catch(Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);

            }
        }

        void RadioButton()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connection))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("exec GenderList", con))
                    {
                        SqlDataAdapter sd = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sd.Fill(dt);
                        radiobutton.DataSource = dt;
                        radiobutton.DataTextField = "sex";
                        radiobutton.DataValueField = "sex";
                        radiobutton.DataBind();


                    }

                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);

            }
        }
    }
}