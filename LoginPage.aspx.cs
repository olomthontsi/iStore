using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username;
            string password;


            username = txtusername.Text;
            password = txtpassword.Text;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if ((username == GridView1.Rows[i].Cells[0].Text) && (password == GridView1.Rows[i].Cells[1].Text))
                {
                    Session["username"] = username;

                    Response.Redirect("adminhome.aspx");
                }
            }
        }
    }
}