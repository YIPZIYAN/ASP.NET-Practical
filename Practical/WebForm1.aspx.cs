using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblMsg.Text = "Thank you for using our service";

                double budget = Convert.ToDouble(txtBudget.Text);
                double price = calculatePrice();
                if (budget >= price)
                {
                    lblResult.Text = "Your Destination : " + ddlFrom.Text + " - " + ddlTo.Text + "</br>" +
                        "Yay! Can go for holiday!" + "</br>" +
                        differencesPrice(budget).ToString("C") + " extra pocket money!";
                }
                else
                {
                    lblResult.Text = "Your Destination : " + ddlFrom.Text + " - " + ddlTo.Text + "</br>" +
                        "Not enough budget!" + "</br>" +
                        Math.Abs(differencesPrice(budget)).ToString("C") + " needed.";
                }




            }
        }

        private double calculatePrice()
        {
            double price = 0;
            if (ddlFrom.SelectedValue == "KL")
            {
                if (ddlTo.SelectedValue == "Japan")
                {
                    price = 2400;
                }
                else
                {
                    price = 2200;
                }
            }
            else
            {
                if (ddlTo.SelectedValue == "Japan")
                {
                    price = 3400;
                }
                else
                {
                    price = 3200;
                }
            }

            return price;
        }

        private double differencesPrice(double budget)
        {
            return budget - calculatePrice();
        }
    }
}