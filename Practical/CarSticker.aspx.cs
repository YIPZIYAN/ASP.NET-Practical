using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class CarSticker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Name: " + txtName.Text + "</br>" +
                "ID: " + txtID.Text + "</br>" +
                "Joined Date: " + calDate.SelectedDate.ToShortDateString() + "</br>" +
                "Gender: " + radGender.SelectedValue + "</br>" +
                "Programme: " + ddlProgramme.Text + "</br>" +
                "Year of Study: " + ddlYear.SelectedValue + "</br>" +
                "Vehicle's Registration Number: " + txtReg.Text + "</br>" +
                "Vehicle's Type: " + ddlType.Text + "</br>";
        }
    }
}