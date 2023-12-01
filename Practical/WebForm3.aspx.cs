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



            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                TextBox q1 = PreviousPage.FindControl("txtQ1") as TextBox;

                TextBox q2 = PreviousPage.FindControl("txtQ2") as TextBox;


                TextBox q3 = PreviousPage.FindControl("txtQ3") as TextBox;


                Label total = PreviousPage.FindControl("lblTotalPrice") as Label;
                if (Convert.ToInt32(q1.Text) > 0)
                {
                    lblOrder.Text += q1.Text + " - Menu Set 1</br>";
                }
                if (Convert.ToInt32(q2.Text) > 0)
                {
                    lblOrder.Text += q2.Text + " - Menu Set 2</br>";
                }
                if (Convert.ToInt32(q3.Text) > 0)
                {
                    lblOrder.Text += q3.Text + " - Menu Set 3</br>";
                }

                lblOrder.Text += "Total Price = " +
                   total.Text
                    + "</br>";
            }

            lblTimeNow.Text = DateTime.Now.ToShortTimeString();
            lblReceiveTime.Text = DateTime.Now.AddMinutes(25).ToShortTimeString();
        }
    }
}