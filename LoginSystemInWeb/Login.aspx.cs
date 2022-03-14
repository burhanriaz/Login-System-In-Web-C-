using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginSystemInWeb
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(@"Data Source=BURHAN;Initial Catalog=Car_Rental;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {

                Response.Write(message.Text = "Username or Password Missing!!");

            }
            else
            {
                cnn.Open();

                string username_check = "select count(*) from UserTb where Username = '" + TextBox1.Text + "'";
                string pwd_check = "select count(*) from UserTb where Username = '" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(username_check, cnn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                cnn.Close();
                if (temp > 0)
                {
                    cnn.Open();
                    SqlCommand cmd_pass = new SqlCommand(pwd_check, cnn);
                    int temp2 = Convert.ToInt32(cmd_pass.ExecuteScalar().ToString());
                    if (temp2 > 0)
                    {
                        Session["users"] = TextBox1.Text;
                        Session["user_password"] = TextBox2.Text;
                        Response.Write(message.Text = "User Name and password is correct");
                        Response.Redirect("Home.aspx");
                 
                    }
                    else
                    {
                        Response.Write(message.Text = "password is not correct");
                    }
                }
                else
                {
                    Response.Write(message.Text = "User name is not correct");
                }
            }
        }
    }
}