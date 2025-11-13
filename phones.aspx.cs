using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class phones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string series = Request.QueryString["series"];
                if (!string.IsNullOrEmpty(series))
                {
                    //lblTitle.Text = series.Replace("iphone", "iPhone ").ToUpper();
                    LoadPhones(series);
                }
            }
        }

        private void LoadPhones(string series)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT Model_Name, Images, Price FROM Product WHERE Model_Name = @Keyword";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Keyword", series);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    //rptPhones.DataSource = reader;
                    //rptPhones.DataBind();
                }
            }
        }

        protected void rptPhones_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}