using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (GridView1_Rows.Count > 0)
            {
                txtId.Text = GridView1.Rows[0].Cells[0].Text;
                txtProducCode.Text = GridView1.Rows[0].Cells[1].Text;
                txtModelName.Text = GridView1.Rows[0].Cells[2].Text;
                txtStorageCapacity.Text = GridView1.Rows[0].Cells[3].Text;
                txtColour.Text = GridView1.Rows[0].Cells[4].Tex;
                txtPrice.Text = GridView1.Rows[0].Cells[5].Text;
                txtQuantity.Text = GridView1.Rows[0].Cells[6].Text;
                txtDescription.Text = GridView1.Rows[0].Cells[7].Text;
                txtProductType.Text = GridView1.Rows[0].Cells[8].Text;
                txtCostPrice.Text = GridView1.Rows[0].Cells[9].Text;
                txtImages.Text = GridView1.Rows[0].Cells[10].Text;
            }

        }
    }
}