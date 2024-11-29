using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblroomrate.Text = DropDownList1.SelectedValue;
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Date of arrival:" + adate.Text + "<br> Number of Days:" + ndays.Text + "<br> Room Type:" + DropDownList1.SelectedItem + "<br>Room rate:" + lblroomrate.Text + "<br> Number of Person:" + npersons.Text
+ "<br> Advanced Payment:" + apayment.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int nd = Convert.ToInt32(ndays.Text);
        int rr = Convert.ToInt32(lblroomrate.Text);
        int aamount = Convert.ToInt32(apayment.Text);
        int ta = (nd * rr) - aamount;
        lbltamount.Text = Convert.ToString(ta);
    }
}
