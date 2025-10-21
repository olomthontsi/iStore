using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string username;
            string password;


            // Get values from textboxes
            username = txtUsername.Text;
            password = txtPassword.Text;

            // Check each row in GridView
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                // If username and password match a row
                if ((username == GridView1.Rows[i].Cells[7].Text) && (password == GridView1.Rows[i].Cells[5].Text))
                {
                    // Save username in session
                    Session["username"] = username;

                    // Go to admin home page
                    Response.Redirect("adminhome.aspx");
                }
            }
        }
    }
}