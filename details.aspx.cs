using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int last_id = 0;
            int new_id = 0;

            if(GridView1.Rows.Count > 0)
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    last_id = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
                    new_id = last_id + 1;
                }
            }
            else
            {
                new_id= 1;
            }
            Session["id"] = new_id;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int quantity = 0;

            // get the item that was clicked
            DataListItem item = e.Item;

            Session["codesession"] = ((Label)item.FindControl("Product_CodeLabel")).Text;
            Session["namesession"] = ((Label)item.FindControl("Model_NameLabel")).Text;
            Session["pricesession"] = ((Label)item.FindControl("PriceLabel")).Text;
            Session["colorsession"] = ((Label)item.FindControl("ColourLabel")).Text;
            Session["typesession"] = ((Label)item.FindControl("Product_TypeLabel")).Text;

            DropDownList ddl = (DropDownList)item.FindControl("ddlquantity");
            quantity = Convert.ToInt32(ddl.SelectedValue);
            Session["quantity_session"] = quantity;

            SqlDataSource2.Insert();
        }
    }
}