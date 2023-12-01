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

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (radSet.SelectedValue)
            {
                case "1":
                    lblSetDetail.Text = "Nasi Lemak" + "</br>"
                        + "Chicken Rendang" + "</br>" + "Teh Tarik" + "</br>" + "RM 12.50";
                    break;
                case "2":
                    lblSetDetail.Text = "Mee Goreng" + "</br>" +
                        "Fried Egg" + "</br>" +
                        "Teh Tarik" + "</br>" +
                        "RM 8.50";
                    break;
                case "3":
                    lblSetDetail.Text = "Chicken Sauseges</br>Omelette</br>Read Beans</br>Coffee</br>RM 10.50";
                    break;

            }
        }

        protected void btnCal_Click(object sender, EventArgs e)
        {
            double price1 = 0, price2 = 0, price3 = 0;
            if (cbSet1.Checked)
            {
                price1 = Convert.ToInt32(txtQ1.Text) * 12.5;
                lblPriceSet1.Text = price1 + "";
            }
            if (cbSet2.Checked)
            {
                price2 = Convert.ToInt32(txtQ2.Text) * 8.5;

                lblPriceSet2.Text = price2 + "";

            }
            if (cbSet3.Checked)
            {
                price3 = Convert.ToInt32(txtQ3.Text) * 10.5;

                lblPriceSet3.Text = price3 + "";
            }

            lblTotalPrice.Text = price1 + price2 + price3+"";

        }

        protected void cbSet1_CheckedChanged(object sender, EventArgs e)
        {
            if(!cbSet1.Checked) {
                lblPriceSet1.Text = "";
                txtQ1.Text = "0";
            }

            if (!cbSet2.Checked)
            {
                lblPriceSet2.Text = "";
                txtQ2.Text = "0";
            }

            if (!cbSet3.Checked)
            {
                lblPriceSet3.Text = "";
                txtQ3.Text = "0";
            }
        }
    }
}