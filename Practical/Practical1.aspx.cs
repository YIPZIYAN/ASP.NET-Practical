using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class Practical1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (chkNews.Checked)
            {
                string msg = "", msgList = "";

                foreach (ListItem item in chkSubject.Items)
                {
                    if (item.Selected)
                    {
                        msg += "<li>" + item.Text + "</li>";
                    }
                }

                foreach (ListItem item in lboxFruit.Items)
                {
                    if (item.Selected)
                    {
                        msgList += "<li>" + item.Text + "</li>";
                    }
                }

                lblResult.Text = "Yout Details:" + "</br>" +
                    "Name: " + txtName.Text + "</br>" +
                    "Level:" + ddlLevel.Text + "</br>" +
                    "Gender:" + radGender.SelectedValue + "</br>" +
                    "Address:" + txtAddress.Text + "</br>" +
                    "DOB:" + calDate.SelectedDate.ToShortDateString() + "</br>" +
                    "Subject:" + msg + "</br>" +
                    "Favourite Food" + msgList + "</br>";
            }
        }
    }
}