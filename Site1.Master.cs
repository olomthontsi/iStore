using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void SearchLink_Click(object sender, EventArgs e)
        {
            string item = txtsearch.Text;
            Session["product"] = item;
            Response.Redirect("search.aspx");
        }
    }
}