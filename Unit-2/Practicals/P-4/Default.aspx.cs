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
        int cntr = 1;
        if(Request.Cookies["myCookies"]!=null){
            cntr=Convert.ToInt16(Request.Cookies["myCookies"].Value);
            cntr++;
        }
        HttpCookie ck = new HttpCookie("myCookies");
        ck.Value = Convert.ToString(cntr);
        Response.Cookies.Add(ck);
        Label1.Text = "<B>This Page is Visited For " + Convert.ToString(cntr) + " times on this computer <B/> ";


    }
}
