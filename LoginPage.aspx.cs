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
            //declaration 
            string username;
            string password;

            //retrieve values from textboxes
            username = txtusername.Text;
            password = txtpassword.Text;

            //loop through Gridview cells
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if ((username == GridView1.Rows[i].Cells[2].Text) && (password == GridView1.Rows[i].Cells[5].Text))
                {
                    Session["username"] = username;

                    Response.Redirect("adminhome.aspx");
                }
            }
        }
    }
}