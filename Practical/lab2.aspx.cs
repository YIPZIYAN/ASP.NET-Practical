using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical
{
    public partial class lab2 : System.Web.UI.Page
    {




        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
   RadioButtonList1.Visible = false;
            }
         
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string queryGrandTotal = "SELECT ROUND(SUM(OD.Quantity * OD.UnitPrice * (1-OD.Discount)),2) AS GrandTotal FROM Orders AS O INNER JOIN \"Order Details\" AS OD ON O.OrderID = OD.OrderID WHERE O.EmployeeID = @EmployeeID AND YEAR(O.OrderDate) = @year";

            SqlCommand cmdSelect = new SqlCommand(queryGrandTotal, con);
            cmdSelect.Parameters.AddWithValue("@EmployeeID ", ddlName.SelectedValue);
            cmdSelect.Parameters.AddWithValue("@year", RadioButtonList1.SelectedValue);

            object result = cmdSelect.ExecuteScalar();

            if (result != null)
            {
                double totalSales = Double.Parse(result.ToString());
                lblTitle.Text = "Sales Order by " + ddlName.SelectedItem + " in the year of "
                    + RadioButtonList1.SelectedValue + ". Grand Total Sales: $" + totalSales.ToString();
            }


        }

        protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
        {
            RadioButtonList1.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            double totalSales = 0.0;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();
            string strSelect = "SELECT * FROM [Order Details] AS OD INNER JOIN Products AS P ON OD.ProductID = P.ProductID WHERE (OD.OrderID = @orderid)";
            SqlCommand cmdSelect = new SqlCommand(strSelect, con);
            cmdSelect.Parameters.AddWithValue("@orderid", GridView1.SelectedRow.Cells[1].Text);
            SqlDataReader dtrInfo = cmdSelect.ExecuteReader();

            if (dtrInfo.HasRows)
            {
                while (dtrInfo.Read())
                {
                    totalSales += (Double.Parse(dtrInfo["UnitPrice"].ToString())
                        * Double.Parse(dtrInfo["Quantity"].ToString()) - Double.Parse(dtrInfo["Discount"].ToString()));
                }
                lblOldSales.Text = "Total Sales for <b>Order Id:" + GridView1.SelectedRow.Cells[1].Text + "=$" + totalSales + "</b>";
            }
            con.Close();
        }
    }
}