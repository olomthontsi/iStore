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
            Label2.Text = new_id.ToString();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int quantity = 0;
            int i;
            foreach(DataListItem item in DataList1.Items)
            {              
                DataList1.SelectedIndex = e.Item.ItemIndex;
                i = DataList1.SelectedIndex;

                Session["codesession"] = ((Label)DataList1.SelectedItem.FindControl("Product_CodeLabel")).Text;
                Session["namesession"] = ((Label)DataList1.SelectedItem.FindControl("Model_NameLabel")).Text;
                Session["pricesession"] = ((Label)DataList1.SelectedItem.FindControl("PriceLabel")).Text;
                Session["colorsession"] = ((Label)DataList1.SelectedItem.FindControl("ColourLabel")).Text;
                Session["typesession"] = ((Label)DataList1.SelectedItem.FindControl("Product_TypeLabel")).Text;

                DropDownList ddl = item.FindControl("ddlquantity") as DropDownList;
                quantity = Convert.ToInt32(ddl.SelectedValue);
                Session["quantity_session"] = quantity;
            }
        }
    }
}