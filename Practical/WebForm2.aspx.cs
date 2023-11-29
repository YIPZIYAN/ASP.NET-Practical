using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //You can also type as - if (!IsPostBack)
            {
                txtDepart.Text =
                DateTime.Now.ToShortDateString();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDepart.Text = calDepart.SelectedDate.ToShortDateString();
        }

        protected void ddlDestination_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDestination.SelectedValue == "Seremban" && ddlFrom.SelectedValue == "Hentian Duta")
            {
                lblError.Text = "Sorry. We do not provide trip from Hentian Duta to Seremban";
                return;
            }

            if (ddlDestination.SelectedValue == "Butterworth" && ddlFrom.SelectedValue == "Hentian Putra")
            {
                lblError.Text = "Sorry. We do not provide trip from Hentian Putra to Butterworth";
                return;
            }

            double price;
            if (ddlDestination.SelectedValue == "Butterworth")
            {
                price = 34 * Convert.ToInt32(txtAdult.Text) + 25.5 * Convert.ToInt32(txtChild.Text);
            }
            else
            {
                price = 6 * Convert.ToInt32(txtAdult.Text) + 4.3 * Convert.ToInt32(txtChild.Text);
            }
            txtPrice.Text =  price.ToString("C");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void txtPrice_TextChanged(object sender, EventArgs e)
        {

        }
    }
}