using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string productCode = e.CommandArgument.ToString();

                Session["productcode"] = productCode;
                Response.Redirect("details.aspx");
            }
        }

    }
}