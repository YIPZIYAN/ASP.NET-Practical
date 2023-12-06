using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class lab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.Visible = false;
                ddlSearch.SelectedIndex = 0;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Repeater1.DataBind();
            Repeater1.Visible = true;
            lblNum.Text = Repeater1.Items.Count.ToString();
        }
    }
}