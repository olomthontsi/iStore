using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Takealot
{
	public partial class add : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
        {
            //code to calculate new id
            int lastId = 0;
            int newId = 0;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                lastId = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
            }
            newId = lastId + 1;
            txtID.Text = newId.ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}