using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                if (PreviousPage.FindControl("cbSet1").Checked)
                {
                    lblOrder.Text = PreviousPage.FindControl("txtQ1").Text + " - Menu Set 1</br>";
                }
                if (PreviousPage.FindControl("cbSet2").Checked)
                {
                    lblOrder.Text = PreviousPage.FindControl("txtQ2").Text + " - Menu Set 2</br>";
                }
                if (PreviousPage.FindControl("cbSet3").Checked)
                {
                    lblOrder.Text = PreviousPage.FindControl("txtQ3").Text + " - Menu Set 3</br>";
                }

                lblOrder.Text = "Total Price = " +
                    PreviousPage.FindControl("lblTotalPrice").ToString("C")
                    + "</br>";
            }

            lblTimeNow.Text = DateTime.Now.ToShortTimeString();
            lblReceiveTime.Text = DateTime.Now.AddMinutes(25).ToShortTimeString();
        }
    }
}