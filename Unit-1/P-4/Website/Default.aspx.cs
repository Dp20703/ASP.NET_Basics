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
    protected void Button1_Click(object sender, EventArgs e)
    {
        MyArithClsLib.SimpleArith obj = new MyArithClsLib.SimpleArith();
        int ans;
        ans = obj.sum(Convert.ToInt16(TextBox1.Text), Convert.ToInt16(TextBox2.Text));
        Response.Write("Sum is:"+ Convert.ToString(ans));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MyArithClsLib.AdvArith obj = new MyArithClsLib.AdvArith();
        int ans;
        
        ans = obj.Multy(Convert.ToInt16(TextBox1.Text), Convert.ToInt16(TextBox2.Text));
        Response.Write("Multiplication is:" + Convert.ToString(ans));
    }
}
