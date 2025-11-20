using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Takealot
{
	public partial class EditUser : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
       
		}

        protected void btnEdit_Click(object sender, EventArgs e)
        {
			SqlDataSource1.Update();
        }
       

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                txtId.Text = GridView1.Rows[0].Cells[0].Text;
                txtUserID.Text = GridView1.Rows[0].Cells[1].Text;
                txtUserName.Text = GridView1.Rows[0].Cells[2].Text;
                txtFirstName.Text = GridView1.Rows[0].Cells[3].Text;
                txtEmailAddress.Text = GridView1.Rows[0].Cells[4].Text;
                txtLastName.Text = GridView1.Rows[0].Cells[5].Text;
                txtPassword.Text = GridView1.Rows[0].Cells[6].Text;
                txtPhoneNumber.Text = GridView1.Rows[0].Cells[7].Text;
                txtDay.Text = GridView1.Rows[0].Cells[8].Text;
                txtCountry.Text = GridView1.Rows[0].Cells[9].Text;
                txtMonth.Text = GridView1.Rows[0].Cells[10].Text;
                txtYear.Text = GridView1.Rows[0].Cells[11].Text;
                txtAddress.Text = GridView1.Rows[0].Cells[12].Text;
                txtSuburb.Text = GridView1.Rows[0].Cells[13].Text;
                txtCity.Text = GridView1.Rows[0].Cells[14].Text;
                txtPostalCode.Text = GridView1.Rows[0].Cells[15].Text;
                txtProvince.Text = GridView1.Rows[0].Cells[16].Text;
            }
        }
    }
    
    
}