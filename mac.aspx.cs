using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class mac : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int i;
            foreach (DataListItem Item in DataList1.Items)
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;
                i = DataList1.SelectedIndex;

                Session["productcode"] = ((Label)DataList1.SelectedItem.FindControl("Product_CodeLabel")).Text;

            }
            Response.Redirect("details.aspx");
        }
    }
}