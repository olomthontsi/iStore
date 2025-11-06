using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblconfirmation.Visible = true;
            btnno.Visible = true;
            btnyes.Visible = true;
        }

        protected void btnyes_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            Response.Redirect("delete.aspx");
        }

        protected void btnno_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete.aspx");
        }
    }
}