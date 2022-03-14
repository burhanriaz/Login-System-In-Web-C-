using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading.Tasks;
using System.Threading;

namespace LoginSystemInWeb
{
   
    public partial class About : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(@"Data Source=BURHAN;Initial Catalog=Car_Rental;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
            ShowProfile();

           
        }
        private void ShowProfile()
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter sda = new SqlDataAdapter();

            DataTable dt = new DataTable();
            cnn.Open();
            sda = new SqlDataAdapter("select  Username, Password,Address,City,Country from UserTB where Username = '" + Session["users"] + "'", cnn);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            DataTable dtimg = new DataTable();
            SqlDataAdapter sdimg = new SqlDataAdapter();
            sdimg = new SqlDataAdapter("select ImgPath from UserTB where Username = '" + Session["users"] + "'", cnn);
            sdimg.Fill(dtimg);
            Image1.ImageUrl = dtimg.Rows[0]["ImgPath"].ToString();
            Label1.Text = "WELCOME " + (dt.Rows[0]["Username"].ToString()).ToUpper();
            cnn.Close();
        }

   
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            if (Session["users"] !=null)
            {                   
               
                    cnn.Open();
                    string query = "Delete from UserTb where Username='" + Session["users"] + "';";
                    SqlCommand cmd = new SqlCommand(query, cnn);
                    cmd.ExecuteNonQuery();
                    Response.Write(message.Text="Account delete Succsfully");
                    Thread.Sleep(5000);                     
                    Response.Redirect("Logout.aspx");
                    cnn.Close();
                }
               
            }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        }
    
}