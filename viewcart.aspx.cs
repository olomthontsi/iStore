using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        { 
            // declare variables to calculate subtotals/totals
            double subtotal = 0;
            double selling_price = 0;
            int quantity = 0;
            double grand_total = 0;

            if(GridView1.Rows.Count > 0)
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    selling_price = Convert.ToDouble(GridView1.Rows[i].Cells[4].Text);
                    quantity = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
                    subtotal = selling_price * quantity;
                    GridView1.Rows[i].Cells[6].Text = subtotal.ToString();
                    grand_total += Convert.ToDouble(subtotal);
                }
                GridView1.FooterRow.Cells[5].Text = "Total due";
                GridView1.FooterRow.Cells[6].Text = grand_total.ToString();
            }

        }
    }
}