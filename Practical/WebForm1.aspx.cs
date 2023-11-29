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
            if (IsPostBack) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " +
                DateTime.Now.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}