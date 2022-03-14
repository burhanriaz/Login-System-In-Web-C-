using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;


namespace LoginSystemInWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(@"Data Source=BURHAN;Initial Catalog=Car_Rental;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnn.Open();
            string username_check = "select count(*) from UserTb where username = '" + TextUsername.Text + "'";
            SqlCommand cmd = new SqlCommand(username_check, cnn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cnn.Close();
            if (temp > 0)
            {
                Response.Write(message.Text = "Username Already Exit");
               
            }
            else
            {
                if (TextUsername.Text == "" || Textpassword.Text == "" || Textaddress.Text == "" || Textcity.Text == "" || TextState.Text == "")
                {
                   
                    Response.Write(message.Text = "Please Fill the all Fileds");

                }
                else
                {
                    try                          
                    {

                        cnn.Open();
                        string ImgName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.PostedFile.SaveAs("D:/LoginSystemInWeb/LoginSystemInWeb/UserImg/" + ImgName);
                        string query = ("insert into UserTb values('" + TextUsername.Text + "', '" + Textpassword.Text + "', '" + Textaddress.Text + "' ,'" + Textcity.Text + "','" + TextState.Text + "','" + "UserImg/" + ImgName + "')");
                        SqlCommand command = new SqlCommand(query, cnn);
                        command.ExecuteNonQuery();
                        Response.Write(message.Text = "Sign In Successfuly");                 
                        Response.Redirect("Login.aspx");

                        cnn.Close();

                    }
                    catch (Exception error)
                    {

                        //  message.Text = "Please Fill the all Fileds";
                        Response.Write(error.Message);
                    }
                }
            }
        }
   }
}
               
           

