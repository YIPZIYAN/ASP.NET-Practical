using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Practical
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (radCCType.SelectedValue.ToString().Equals("Visa"))
            {
                RegularExpressionValidator2.ValidationExpression = "^4\\d{13}$";
            }
            else
            {
                RegularExpressionValidator2.ValidationExpression = "^5\\d{13}$";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "You have entered the following:<br/>" +
    " User name: " + txtUsername.Text +
    "<br/> Password: " + txtPassword.Text +
    "<br/> Age: " + txtAge.Text +
    "<br/>Date of birth: " + txtDob.Text +
    "<br/> Credit card number: " + txtCCNum.Text;
        }
    }
}